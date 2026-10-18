#coding:utf-8
'''
树莓派WiFi无线视频小车机器人驱动源码
作者：liuviking
版权所有：小R科技（深圳市小二极客科技有限公司）；WIFI机器人网论坛 www.wifi-robots.com
本代码可以自由修改，但禁止用作商业盈利目的！
本代码已申请软件著作权保护，如有侵权一经发现立即起诉！
'''
'''
by MHQ
增加js脚本执行器，需安装qt5-default , libqt5multimedia5-plugins , libqt5script5
'''
import sys
import os
from socket import *
from time import ctime
import binascii
import RPi.GPIO as GPIO
import time
import threading
import serial
import random
import pygame
import string
#from smbus import SMBus
import cv2
import numpy as np
from subprocess import call
from enum import Enum
import json
SCRIPT_VER = '20250415'

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
SCL = 3
SDA = 2
GPIO.setup(SCL,GPIO.OUT,initial=GPIO.HIGH)
GPIO.setup(SDA,GPIO.OUT,initial=GPIO.HIGH)

def	_Set_(gpio):
	GPIO.output(gpio,True)

def	_Clr_(gpio):
	GPIO.output(gpio,False)
def _sleep_():
	#time.sleep(0.0000005)
	time.sleep(0.00001)
	
def _start_():
	_Set_(SDA)
	_Set_(SCL)
	_sleep_()
	_Clr_(SDA)
	_sleep_()
	_Clr_(SCL)
def _stop_():
	_Clr_(SDA)
	_Set_(SCL)
	_sleep_()
	_Set_(SDA)
	_sleep_()
def _checkack_():
	_Clr_(SDA)
	_sleep_()
	_Set_(SCL)
	_sleep_()
	_Clr_(SCL)
def _sendbyte_(date_byte):
	for bitcnt in range(0,8):
		
		if ((date_byte << bitcnt)&0x80):
			_Set_(SDA)
		else :
			_Clr_(SDA)
		_sleep_()
		_Set_(SCL)
		_sleep_()
		_Clr_(SCL)
	_checkack_()

class XR_Servo:
	def __init__(self):
		pass
	def XiaoRGEEK_SetServo(self,ServoNum,angle):
		print 'ServoNum is %d,angle is %d'%(ServoNum,angle)
		if (0< ServoNum <9):
			tmStart = time.time();
			_start_()					#2
			_sendbyte_(0x2E)			#18
			_sendbyte_(0xFF)			#18
			_sendbyte_(ServoNum)		#18
			_stop_()					#2
			_start_()					#2
			_sleep_()
			_sleep_()
			_sleep_()
			_sleep_()					#4
			_start_()					#2
			_sendbyte_(0x2E)			#18
			_sendbyte_(angle)			#18
			_sendbyte_(0xFF)			#18
			_stop_()					#2
			return time.time()-tmStart;
		else :
			print 'WE have no servo IO as  %d '%ServoNum
	def	XiaoRGEEK_SaveServo(self):
		#global last_spkTime
		#while(time.time()-last_spkTime<1.0):
		#	time.sleep(0.01)
		_start_()
		_sendbyte_(0x2E)
		_sendbyte_(0xFF)
		_sendbyte_(0x11)
		_stop_()
		_start_()
		_sleep_()
		_sleep_()
		_sleep_()
		_sleep_()
		_start_()
		_sendbyte_(0x2E)
		_sendbyte_(0x01)
		_sendbyte_(0xFF)
		_stop_()
	def	XiaoRGEEK_ReSetServo(self):
		#global last_spkTime
		#while(time.time()-last_spkTime<1.0):
		#	time.sleep(0.01)
		_start_()
		_sendbyte_(0x2E)
		_sendbyte_(0xFF)
		_sendbyte_(0x00)
		_stop_()
		_start_()
		_sleep_()
		_sleep_()
		_sleep_()
		_sleep_()
		_start_()
		_sendbyte_(0x2E)
		_sendbyte_(0x01)
		_sendbyte_(0xFF)
		_stop_()


# 说明：UTF兼容ISO8859-1和ASCII，GB18030兼容GBK，GBK兼容GB2312，GB2312兼容ASCII
CODES = ['UTF-8', 'GB18030', 'BIG5', 'UNICODE']
# UTF-8 BOM前缀字节
UTF_8_BOM = b'\xef\xbb\xbf'
global VR_Exists
VR_Exists=True

global last_spkTime
last_spkTime=time.time()

global spk_waitTime
spk_waitTime = 0
 
global reboot_Ctrl
reboot_Ctrl=0
 
global udp_Debug
udp_Debug=0 
global udp_ctlVRAll
udp_ctlVRAll=False			#控制是否限制VR区间
global udp_ctlIgnoreVRCfg
udp_ctlIgnoreVRCfg=False	#控制是否忽略VR配置命令导致的系统预设VR流程失效
debuger_addr=('192.168.1.53',2222)

global mp3StartTime
mp3StartTime = 0.0
global mp3AliveTime
mp3AliveTime = 60.0
global hbCnt
hbCnt = 0

global app_linked
app_linked = 0

RADAR_DIST=-1;
 
def string_encoding(data):
#    """
#    获取字符编码类型
#    
#    :param data: 字节数据
#    :return: 
#    """
# 遍历编码类型
	for code in CODES:
		try:
			data.decode(encoding=code)
			if 'UTF-8' == code and data.startswith(UTF_8_BOM):
				return 'UTF-8-SIG'
			return code
		except UnicodeDecodeError:
			continue
	return 'unknown'

def Ser2Udp(msg):
	global udp_Debug
	global debuger_addr
	if( udp_Debug==0 ):
		print msg
		return
	if( not msg ):
		return
	print msg	
	scode = string_encoding(msg)
	#print scode
	if('UTF' in scode):
		udpSock.sendto(msg.decode('utf8').encode('gbk') ,debuger_addr)
	elif('UNICODE' in scode):
		udpSock.sendto(msg.encode('gbk') ,debuger_addr)
	else:
		udpSock.sendto(msg ,debuger_addr)
	#udpSock.sendto('\r\n',debuger_addr)

def TryUdpDebug(data,addr):	
	global udp_Debug
	global udp_ctlIgnoreVRCfg
	global udp_ctlVRAll
	global debuger_addr
	if( udp_Debug!=0 ):
		return
	if( len(data)<=0 ):	
		udpSock.sendto('UDP_DEBUG',debuger_addr)
		udpSock.settimeout(0.1)
	try:
		if( len(data)<=0 ):
			data,addr=udpSock.recvfrom(10,MSG_WAITALL)
		print(data)
		if( data=='UDP_DEBUG0' ):
			udp_Debug = 1
			debuger_addr = addr
			Ser2Udp("开启正常日志调试...")
		elif( data=='UDP_DEBUG1' ):
			udp_Debug = 1
			udp_ctlVRAll = True
			Ser2Udp("开启日志调试,关闭识别区间...")
			debuger_addr = addr
		elif( data=='UDP_DEBUG2' ):
			udp_Debug = 1
			udp_ctlIgnoreVRCfg = True
			Ser2Udp("开启日志调试,禁用配置就关...")
			debuger_addr = addr
		elif( data=='UDP_DEBUG3' ):
			udp_Debug = 1
			udp_ctlVRAll = True
			udp_ctlIgnoreVRCfg = True
			Ser2Udp("开启日志调试,关闭识别区间，禁用配置就关...")
			debuger_addr = addr
	except Exception as e:
		#print(e)
		pass
	
	
global Path_Dect_px
Path_Dect_px = 320
global Path_Dect_on
Path_Dect_on = 0
global IPV4toSERIAL_sw
IPV4toSERIAL_sw = 0
global IPV4toSERIAL_exitFlag
IPV4toSERIAL_exitFlag = 0
global TTS_speakWait
TTS_speakWait = 0
global TTS_speakStart
TTS_speakStart = 0
global radarKeepDist
radarKeepDist = 60
global radarDir
radarDir = 0
global dist_av
dist_av = 200
global distav_p
distav_p = 1
global distav_n
distav_n = 3

global wd_time
wd_time = -1 #time.time()
#######################################
#############信号引脚定义##############
#######################################
GPIO.setmode(GPIO.BCM)

########LED口定义#################
LED0 = 10
LED1 = 9
LED2 = 25

########电机驱动接口定义#################
ENA = 13	#//L298使能A
ENB = 20	#//L298使能B
IN1 = 19	#//电机接口1
IN2 = 16	#//电机接口2
IN3 = 21	#//电机接口3
IN4 = 26	#//电机接口4

########舵机接口定义#################

########超声波接口定义#################
ECHO = 4	#超声波接收脚位  
TRIG = 17	#超声波发射脚位

########红外传感器接口定义#################
IR_R = 18	#小车右侧巡线红外
IR_L = 27	#小车左侧巡线红外
IR_M = 22	#小车中间避障红外
IRF_R = 23	#小车跟随右侧红外
IRF_L = 24	#小车跟随左侧红外

########跳线设置引脚定义###################
CFG_INITVR = 7		#S3控制是否启动还原语音模块配置
BACKWD_LIGHT = 11	#S1倒车灯控制输出

##CFG_RESERVED=8
##CFG_RESERVED=5

##CFG_RESERVED=6
##CFG_RESERVED=12

########LD3320接口定义#################
##SCS = 3
##IRQ = 11
##SDCK = 8
##SDI = 7
##SDO = 5
##SPIS = 6
##RSTB = 2
##CSB = 3

global Cruising_Flag
Cruising_Flag = 0	#//当前循环模式
global Pre_Cruising_Flag
Pre_Cruising_Flag = 0 	#//预循环模式

global RevStatus
RevStatus = 0
global TurnAngle
TurnAngle=0;
global Golength
Golength=0
buffer = ['00','00','00','00','00','00']
global motor_flag
motor_flag=1

class VR_State(Enum):
	FREE=1
	P_NAME=2	#准备识别名字
	W_NAME=3	#等候识别名字
	P_CMD=4		#准备识别命令
	W_CMD=5		#等候识别命令
	P_STP=6		#准备识别停止指令
	W_STP=7		#等候识别停止指令
	ERROR=8
	DONE=9
	P_SYS=10	#准备系统命令模式
	W_SYS=11	#等候系统命令
	P_CFM1=12	#准备确认模式1
	W_CFM1=13	#等候确认指令
	P_CFM2=14	#准备确认模式2
	W_CFM2=15	#等候确认指令
	P_CFM3=16	#准备确认模式3
	W_CFM3=17	#等候确认指令
	P_STPMV=18	#准备识别停止/移动指令
	W_STPMV=19	#等候识别停止/移动指令

global VR_Flag
VR_Flag=VR_State.FREE	#LD3320 VR口令状态
global VR_FlagSkip		#标志收到非VR结果字符，跳过状态机转变
VR_FlagSkip=False
global VR_FlagOld
VR_FlagOld=VR_State.FREE

global VR_OpTime
VR_OpTime=0.0
global VR_TimeOut
VR_TimeOut=5.0

global VR_VehMove
VR_VehMove=False

global VRC_CMD_TimeOut
VRC_CMD_TimeOut=3.0
global VRC_MV_TimeOut
VRC_MV_TimeOut=30.0


global left_speed
global right_speed
global left_speed_hold
global right_speed_hold
left_speed=100
right_speed=100

global autoServoAdj
autoServoAdj = 0

####################################################
##函数名称 Open_Light()
##函数功能 开大灯LED0
##入口参数 ：无
##出口参数 ：无
####################################################
def	Open_Light():#开大灯LED0
	GPIO.output(LED0,False)#大灯正极接5V  负极接IO口
	time.sleep(1)

####################################################
##函数名称 Close_Light()
##函数功能 关大灯
##入口参数 ：无
##出口参数 ：无
####################################################
def	Close_Light():#关大灯
	GPIO.output(LED0,True)#大灯正极接5V  负极接IO口
	time.sleep(1)
	
####################################################
##函数名称 init_light()
##函数功能 流水灯
##入口参数 ：无
##出口参数 ：无
####################################################
def	init_light():#流水灯
	for i in range(1, 3):
		GPIO.output(LED0,False)#流水灯LED0
		GPIO.output(LED1,False)#流水灯LED1
		GPIO.output(LED2,False)#流水灯LED2
		time.sleep(0.1)
		GPIO.output(LED0,True)#流水灯LED0
		GPIO.output(LED1,False)#流水灯LED1
		GPIO.output(LED2,False)#流水灯LED2
		time.sleep(0.1)
		GPIO.output(LED0,False)#流水灯LED0
		GPIO.output(LED1,True)#流水灯LED1
		GPIO.output(LED2,False)#流水灯LED2
		time.sleep(0.1)
		GPIO.output(LED0,False)#流水灯LED0
		GPIO.output(LED1,False)#流水灯LED1
		GPIO.output(LED2,True)#流水灯LED2
		time.sleep(0.1)
		GPIO.output(LED0,False)#流水灯LED0
		GPIO.output(LED1,False)#流水灯LED1
		GPIO.output(LED2,False)#流水灯LED2
		time.sleep(0.1)
		GPIO.output(LED0,True)#流水灯LED0
		GPIO.output(LED1,True)#流水灯LED1
		GPIO.output(LED2,True)#流水灯LED2
		
global motor_dir
motor_dir=-1		
##########机器人方向控制###########################
def Motor_Forward():
	global motor_dir
	if( motor_dir!=0 ):
		Ser2Udp('motor forward')
		motor_dir = 0
	GPIO.output(ENA,True)
	GPIO.output(ENB,True)
	GPIO.output(IN1,True)
	GPIO.output(IN2,False)
	GPIO.output(IN3,True)
	GPIO.output(IN4,False)
#	GPIO.output(LED1,False)#LED1亮
	GPIO.output(LED2,False)#LED1亮
	GPIO.output(BACKWD_LIGHT,True);#倒车灯灭
	
def Motor_Backward():
	global motor_dir
	if( motor_dir!=1 ):
		Ser2Udp('motor_backward')
		motor_dir = 1
	GPIO.output(ENA,True)
	GPIO.output(ENB,True)
	GPIO.output(IN1,False)
	GPIO.output(IN2,True)
	GPIO.output(IN3,False)
	GPIO.output(IN4,True)
#	GPIO.output(LED1,True)#LED1灭
	GPIO.output(LED2,False)#LED2亮
	GPIO.output(BACKWD_LIGHT,False);#倒车灯亮
	
def Motor_TurnLeft():
	global motor_dir
	if( motor_dir!=2 ):
		Ser2Udp('motor_turnleft')
		motor_dir = 2
	GPIO.output(ENA,True)
	GPIO.output(ENB,True)
	GPIO.output(IN1,True)
	GPIO.output(IN2,False)
	GPIO.output(IN3,False)
	GPIO.output(IN4,True)
#	GPIO.output(LED1,False)#LED1亮
	GPIO.output(LED2,True) #LED2灭
	GPIO.output(BACKWD_LIGHT,True);#倒车灯灭

def Motor_TurnRight():
	global motor_dir
	if( motor_dir!=3 ):
		Ser2Udp('motor_turnright')
		motor_dir = 3
	GPIO.output(ENA,True)
	GPIO.output(ENB,True)
	GPIO.output(IN1,False)
	GPIO.output(IN2,True)
	GPIO.output(IN3,True)
	GPIO.output(IN4,False)
#	GPIO.output(LED1,False)#LED1亮
	GPIO.output(LED2,True) #LED2灭
	GPIO.output(BACKWD_LIGHT,True);#倒车灯灭

def Motor_Stop():
	global motor_dir
	if( motor_dir!=4 ):
		Ser2Udp('motor_stop')
		motor_dir = 4
	GPIO.output(ENA,False)
	GPIO.output(ENB,False)
	GPIO.output(IN1,False)
	GPIO.output(IN2,False)
	GPIO.output(IN3,False)
	GPIO.output(IN4,False)
#	GPIO.output(LED1,True)#LED1灭
	GPIO.output(LED2,True)#LED2亮
	GPIO.output(BACKWD_LIGHT,True);#倒车灯灭
	
##########机器人方向校准（模式中使用）###########################
def forward():
	global motor_flag
	if motor_flag == 1:
		Motor_Forward()
	elif motor_flag == 2:
		Motor_Forward()
	elif motor_flag == 3:
		Motor_Backward()
	elif motor_flag == 4:
		Motor_Backward()
	elif motor_flag == 5:
		Motor_TurnLeft()
	elif motor_flag == 6:
		Motor_TurnLeft()
	elif motor_flag == 7:
		Motor_TurnRight()
	elif motor_flag == 8:
		Motor_TurnRight()
def back():
	global motor_flag
	if motor_flag == 1:
		Motor_Backward()
	elif motor_flag == 2:
		Motor_Backward()
	elif motor_flag == 3:
		Motor_Forward()
	elif motor_flag == 4:
		Motor_Forward()
	elif motor_flag == 5:
		Motor_TurnRight()
	elif motor_flag == 6:
		Motor_TurnRight()
	elif motor_flag == 7:
		Motor_TurnLeft()
	elif motor_flag == 8:
		Motor_TurnLeft()
		
def left():
	global motor_flag
	if motor_flag == 1:
		Motor_TurnLeft()
	elif motor_flag == 2:
		Motor_TurnRight()
	elif motor_flag == 3:
		Motor_TurnLeft()
	elif motor_flag == 4:
		Motor_TurnRight()
	elif motor_flag == 5:
		Motor_Forward()
	elif motor_flag == 6:
		Motor_Backward()
	elif motor_flag == 7:
		Motor_Forward()
	elif motor_flag == 8:
		Motor_Backward()

def right():
	global motor_flag
	if motor_flag == 1:
		Motor_TurnRight()
	elif motor_flag == 2:
		Motor_TurnLeft()
	elif motor_flag == 3:
		Motor_TurnRight()
	elif motor_flag == 4:
		Motor_TurnLeft()
	elif motor_flag == 5:
		Motor_Backward()
	elif motor_flag == 6:
		Motor_Forward()
	elif motor_flag == 7:
		Motor_Backward()
	elif motor_flag == 8:
		Motor_Forward()

##########机器人速度控制###########################
def ENA_Speed(EA_num):
	global left_speed
	left_speed=EA_num
	Ser2Udp('EA_A改变啦 %d '%EA_num)
	ENA_pwm.ChangeDutyCycle(EA_num)

def ENB_Speed(EB_num):
	global right_speed
	right_speed=EB_num
	Ser2Udp('EB_B改变啦 %d '%EB_num)
	ENB_pwm.ChangeDutyCycle(EB_num)
##函数功能 ：舵机控制函数
##入口参数 ：ServoNum(舵机号)，angle_from_protocol(舵机角度)
##出口参数 ：无
####################################################
def Angle_cal(angle_from_protocol):
	#angle=hex(eval('0x'+angle_from_protocol))
	#angle=int(angle,16)
	angle = angle_from_protocol
	if angle > 160:
		angle=160
	elif angle < 15:
		angle=15
	return angle

global servoAngles	
servoAngles = [90,90,90,150,90,90,90,20]
	
def SetServoAngle(ServoNum,angle_from_protocol):
	global servoAngles
	#global last_spkTime
	#while(time.time()-last_spkTime<1.0):
	#	time.sleep(0.01)
#	GPIO.output(LED0,False)
#	GPIO.output(LED1,True)
	GPIO.output(LED2,False)
	time.sleep(0.01)
#	GPIO.output(LED0,True)
#	GPIO.output(LED1,True)
	GPIO.output(LED2,True)

	tm = 0.0
	org_angle = angle_from_protocol
	if angle_from_protocol<-1000: 
		angle_from_protocol = servoAngles[ServoNum-1]-(-1000-angle_from_protocol)
	elif angle_from_protocol>1000:
		angle_from_protocol = servoAngles[ServoNum-1]-(1000-angle_from_protocol)
	if angle_from_protocol<0:
		angle_from_protocol = 0
	elif angle_from_protocol>180:	
		angle_from_protocol = 180
	angle = Angle_cal(angle_from_protocol)	
	
	if ServoNum== 1:
		tm = XRservo.XiaoRGEEK_SetServo(0x01,angle)
		servoAngles[0] = angle
	elif ServoNum== 2:
		tm = XRservo.XiaoRGEEK_SetServo(0x02,angle)
		servoAngles[1] = angle
	elif ServoNum== 3:
		tm = XRservo.XiaoRGEEK_SetServo(0x03,angle)
		servoAngles[2] = angle
	elif ServoNum== 4:
		tm = XRservo.XiaoRGEEK_SetServo(0x04,angle)
		servoAngles[3] = angle
	elif ServoNum== 5:
		tm = XRservo.XiaoRGEEK_SetServo(0x05,angle)
		servoAngles[4] = angle
	elif ServoNum== 6:
		tm = XRservo.XiaoRGEEK_SetServo(0x06,angle)
		servoAngles[5] = angle
	elif ServoNum== 7:
		tm = XRservo.XiaoRGEEK_SetServo(0x07,angle)
		servoAngles[6] = angle
	elif ServoNum== 8:
		tm = XRservo.XiaoRGEEK_SetServo(0x08,angle)
		servoAngles[7] = angle
	else:
		tm = 0.0
	Ser2Udp('设置%d号舵机角度为0x%s(%d),费时=%f秒'%(ServoNum,angle,org_angle,tm))




####################################################
##函数名称 ：Avoiding()
##函数功能 ：红外避障函数
##入口参数 ：无
##出口参数 ：无
####################################################
def	Avoiding(): #红外避障函数
	global motor_flag
	global motor_dir
	if ((GPIO.input(IR_M) == False) or (GPIO.input(IR_L) != False) or (GPIO.input(IR_R) != False)):
		if( motor_dir!=4 ):
			Motor_Stop()
			if((GPIO.input(IR_L) != False) or (GPIO.input(IR_R) != False)):
				XF_Speak(u"[s10][t10]刹车！[s8][t10]好悬[d]",1.0,0.1)
			else:	
				XF_Speak(u"堵车",1.0,0.1)
		else:	
			Motor_Stop()
		time.sleep(0.1)
		return
	else:
		if( (motor_flag==1)&(motor_dir!=0) ):
			forward()
			XF_Speak(u"走起",1.0,0.1)
		else:	
			forward()
		time.sleep(0.1)
		return

####################################################
##函数名称 TrackLine()
##函数功能 巡黑线模式
##入口参数 ：无
##出口参数 ：无
####################################################
def TrackLine():
	if (GPIO.input(IR_L) == False)&(GPIO.input(IR_R) == False): #黑线为高，地面为低
		forward()
		return
	elif (GPIO.input(IR_L) == False)&(GPIO.input(IR_R) == True):
		right()
		return
	elif (GPIO.input(IR_L) == True)&(GPIO.input(IR_R) == False):
		left()
		return
	elif (GPIO.input(IR_L) == True)&(GPIO.input(IR_R) == True): #两侧都碰到黑线
		Motor_Stop()
		return

####################################################
##函数名称 Follow()
##函数功能 跟随模式
##入口参数 ：无
##出口参数 ：无
####################################################
def Follow(): 
	global motor_flag
	global motor_dir
	if(GPIO.input(IR_M) == True): #中间传感器OK
		if(GPIO.input(IRF_L) == False)&(GPIO.input(IRF_R) == False):	#俩边同时探测到障碍物
			if( motor_dir!=4 ):
				Motor_Stop()
				XF_Speak(u"玩我呢",1.0,0.1)
			else:	
				Motor_Stop()			#停止 
		if(GPIO.input(IRF_L) == False)&(GPIO.input(IRF_R) == True):		#左侧障碍物
			if( (motor_flag==1)&(motor_dir!=3) ):
				right()
				XF_Speak(u"我右",1.0,0.1)
			else:	
				right()		#右转 
		if(GPIO.input(IRF_L) == True)& (GPIO.input(IRF_R) == False):		#右侧障碍物
			if( (motor_flag==1)&(motor_dir!=2) ):
				left()
				XF_Speak(u"我左",1.0,0.1)
			else:	
				left()		#左转
		if(GPIO.input(IRF_L) == True)& (GPIO.input(IRF_R) == True):		#无任何障碍物
			if( (motor_flag==1)&(motor_dir!=0) ):
				forward()
				XF_Speak(u"我跟",1.0,0.1)
			else:	
				forward()			#直行 
	else:
		if( motor_dir!=4 ):
			Motor_Stop()
			XF_Speak(u"我停",1.0,0.1)
		else:	
			Motor_Stop()


####################################################
##函数名称 ：Get_Distence()
##函数功能 超声波测距，返回距离（单位是厘米）
##入口参数 ：无
##出口参数 ：无
####################################################
def	Get_Distence():
#	time.sleep(0.1)
	GPIO.output(TRIG,GPIO.HIGH)
	time.sleep(0.000015)
	t0 = time.time()
	t1 = t0
	GPIO.output(TRIG,GPIO.LOW)
	while not GPIO.input(ECHO):
				t1 = time.time()
				if(t1-t0>0.02):
					break
				pass
	if(t1-t0>0.02):
		Ser2Udp('ECHO cant become HIGH!')
		return 0.02*340/2*1000
	t1 = time.time()
	while GPIO.input(ECHO):
				t2 = time.time()
				if(t2-t1>0.02):
					break
				pass
	t2 = time.time()
#	time.sleep(0.1)
	RADAR_DIST = (t2-t1)*340/2*1000
	return RADAR_DIST

####################################################
##函数名称 AvoidByRadar()
##函数功能 超声波避障函数
##入口参数 ：无
##出口参数 ：无
####################################################
def	AvoidByRadar(distance):
	global dist_av
	dis = int(Get_Distence())
	dist_av = (dis*distav_p+dist_av*distav_n)/(distav_p+distav_n)
	if(distance<200):
		distance = 200					#限定最小避障距离为20cm
	if((dist_av>10)&(dist_av < distance)):		#避障距离值(单位mm)，大于10是为了避免超声波的盲区
		Motor_Stop()
	time.sleep(0.1)
	
		
def	Avoid_wave():
	global radarKeepDist
	global radarDir
	global motor_dir
	global dist_av
	dis = Get_Distence()
	dist_av = (dis*distav_p+dist_av*distav_n)/(distav_p+distav_n)
	#Ser2Udp('distance=%d ' %dis)
	#Ser2Udp('dist_av=%d ' %dist_av)
	if((dist_av>10)&(dist_av<radarKeepDist*10)):
		if( motor_dir!=4 ):
			Motor_Stop()
			Ser2Udp("Avoid_wave stop:dist "+str(dist_av));
			XF_Speak(u"有情况，停止",1.0,0.1)
		else:
			Motor_Stop()
	else:
		if( radarDir==0):
			dst = 0
		else:
			dst = 1	
		if( motor_dir!=dst ):
			if( radarDir==0):
				forward()
			else:
				back()	
			Ser2Udp("Avoid_wave forward:dist "+str(dist_av)+" dir "+str(radarDir));
			if( radarDir==0 ):
				XF_Speak(u"安全，前进",1.0,0.1)
			else:
				XF_Speak(u"倒车请注意",1.0,0.1)
		else:
			if( radarDir==0):
				forward()
			else:
				back()	
	time.sleep(0.1)

####################################################
##函数名称 
##函数功能 Route() 路径规划
##入口参数 ：无
##出口参数 ：无
####################################################
def Route():
	global RevStatus
	global TurnAngle
	global Golength
	global left_speed
	global right_speed
	global left_speed_hold
	global right_speed_hold
	while RevStatus !=0 :
		Ser2Udp('RevStatus==== %d ' %RevStatus)
		TurnA=float(TurnAngle*6)/1000
		Golen=float(Golength*10)/1000
		Ser2Udp('TurnAngle====== %f ' %TurnA)
		Ser2Udp('Golength======= %f ' %Golen)
		#ENA_Speed(85)
		#ENB_Speed(85)
		if RevStatus==1:
			left()
			time.sleep(TurnA)
			Motor_Stop()
			forward()
			time.sleep(Golen)
			Motor_Stop()
			RevStatus = 0
			tcpCliSock.send("\xFF")
			time.sleep(0.005)
			tcpCliSock.send("\xA8")
			time.sleep(0.005)
			tcpCliSock.send("\x00")
			time.sleep(0.005)
			tcpCliSock.send("\x00")
			time.sleep(0.005)
			tcpCliSock.send("\xFF")
			time.sleep(0.01)
		elif RevStatus==2:
			right()
			time.sleep(TurnA)
			Motor_Stop()
			forward()
			time.sleep(Golen)
			Motor_Stop()
			RevStatus = 0
			tcpCliSock.send("\xFF")
			time.sleep(0.005)
			tcpCliSock.send("\xA8")
			time.sleep(0.005)
			tcpCliSock.send("\x00")
			time.sleep(0.005)
			tcpCliSock.send("\x00")
			time.sleep(0.005)
			tcpCliSock.send("\xFF")
			time.sleep(0.01)
		#ENA_Speed(left_speed_hold)
		#ENB_Speed(right_speed_hold)
####################################################
##函数名称 Send_Distance()
##函数功能 ：超声波距离PC端显示
##入口参数 ：无
##出口参数 ：无
####################################################
def	Send_Distance(single):
	dis_send = int(Get_Distence()+0.5)
	if(single):
		if((dis_send>=3400) or (dis_send<=20)):
			time.sleep(0.2)
			dis_send2 = int(Get_Distence()+0.5)
			if((dis_send2>=3400) or (dis_send2<=20)):
				time.sleep(0.2)
				dis_send3 = int(Get_Distence()+0.5)
			else:
				dis_send3 = 3410
			if((dis_send2<3400) and (dis_send2>20)):
				dis_send = dis_send2
			if((dis_send3<3400) and (dis_send3>20)):
				dis_send = dis_send3
			Ser2Udp("Distances: "+str(dis_send)+","+str(dis_send2)+","+str(dis_send3)+"mm")
		else:
			Ser2Udp('Distance: %d mm' %dis_send)
	else:
		Ser2Udp('Distance: %d mm' %dis_send)
	RADAR_DIST = dis_send	
	tcpCliSock.send("$4,"+str(dis_send)+"%");
	#if dis_send < 255:
		#tcpCliSock.send("\xFF")
		#time.sleep(0.005)
		#tcpCliSock.send("\x03")
		#time.sleep(0.005)
		#tcpCliSock.send("\x00")
		#time.sleep(0.005)
		#tcpCliSock.send(chr(dis_send))
		#time.sleep(0.005)
		#tcpCliSock.send("\xFF")
		#time.sleep(0.1)


####################################################
##函数名称 Cruising_Mod()
##函数功能 ：模式切换函数
##入口参数 ：无
##出口参数 ：无
####################################################
def	Cruising_Mod(func):
	#Ser2Udp('into Cruising_Mod-01')
	global Pre_Cruising_Flag
	global radarKeepDist
	Ser2Udp('Pre_Cruising_Flag %d '%Pre_Cruising_Flag)
	
	global Cruising_Flag
	#Ser2Udp('Cruising_Flag %d '%Cruising_Flag)
	while True:
		try:
			if (Pre_Cruising_Flag != Cruising_Flag):			
				if (Pre_Cruising_Flag != 0):
					Motor_Stop()
				Pre_Cruising_Flag = Cruising_Flag
				#Ser2Udp('Pre_Cruising_Flag = Cruising_Flag == 0')
			if(Cruising_Flag == 1):		#进入红外跟随模式
				Follow()
			elif (Cruising_Flag == 2):	#进入红外巡线模式
				TrackLine()
			elif (Cruising_Flag == 3):	#进入红外避障模式
				Avoiding()
			elif (Cruising_Flag == 4):	#进入超声波壁障模式##
				Avoid_wave()
			elif (Cruising_Flag == 5):	#进入超声波测距模式
				Send_Distance(False)
				time.sleep(0.2)
			elif (Cruising_Flag == 6):	#进入超声波壁障模式
				AvoidByRadar(radarKeepDist)
			elif (Cruising_Flag == 7):
				Route()
			elif (Cruising_Flag == 8):	#退出摄像头循迹或进入调试模式
				time.sleep(3)
				#os.system('sh start_mjpg_streamer.sh')
				call("sh start_mjpg_streamer.sh &",shell=True)
				Cruising_Flag = 0
			elif (Cruising_Flag == 9):	#进入摄像头循迹操作
				Path_Dect()
			elif (Cruising_Flag == 0):
				RevStatus=0
			else:
				time.sleep(0.001)
			time.sleep(0.001)
		except Exception as e:
			Ser2Udp(str(e))
			pass
####################################################
##函数名称 Path_Dect()
##函数功能 ：模式切换函数
##入口参数 ：FF130800FF，摄像头调试，FF130801FF开始摄像头循迹
##出口参数 
#int Path_Dect_px 	平均像素坐标
#int Path_Dect_on	1:开始循迹，0停止循迹
####################################################
def	Path_Dect():
	global Path_Dect_px
	global Path_Dect_on
	while (Path_Dect_on):
		if Path_Dect_px < 260:
			Ser2Udp("turn left")
			Motor_TurnLeft()
		elif Path_Dect_px> 420:
			Ser2Udp("turn right")
			Motor_TurnRight()
		else :
			Ser2Udp("go stright")
			Motor_Forward()
		time.sleep(0.007)
		Motor_Stop()
		time.sleep(0.006)
####################################################
##函数名称 Path_Dect_img_processing()
##函数功能 ：模式切换函数
##入口参数 ：FF130800FF，摄像头调试，FF130801FF开始摄像头循迹
##出口参数 
#int Path_Dect_px 	平均像素坐标
#int Path_Dect_on	1:开始循迹，0调试模式/停止循迹
####################################################
def	Path_Dect_img_processing(func):
	global Path_Dect_px
	global Path_Dect_on
	Path_Dect_fre_count = 0
	Path_Dect_px_sum = 0
	Path_Dect_cap = 0
	Ser2Udp("into theads Path_Dect_img_processing")
	while True:
		if(Path_Dect_on):
			if(Path_Dect_cap == 0):
				cap = cv2.VideoCapture(0)
				Path_Dect_cap = 1
			else:
				Path_Dect_fre_count+=1
				ret,frame = cap.read()	#capture frame_by_frame
				gray = cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY) #get gray img
				ret,thresh1=cv2.threshold(gray,70,255,cv2.THRESH_BINARY)	#binaryzation 二值化
				for j in range(0,640,5):
					if thresh1[240,j] == 0:
						Path_Dect_px_sum = Path_Dect_px_sum + j
				Path_Dect_px = Path_Dect_px_sum>>5
				Path_Dect_px_sum = 0
				Path_Dect_fre_count = 0
		elif(Path_Dect_cap):
			Motor_Stop()
			time.sleep(0.001)
			Path_Dect_cap = 0
			cap.relese()
		time.sleep(0.1)
####################################################
##函数名称 Communication_Decode()
##函数功能 ：通信协议解码
##入口参数 ：无
##出口参数 ：无
####################################################    
def Communication_Decode():
	global RevStatus
	global TurnAngle
	global Golength
	global Pre_Cruising_Flag
	global Cruising_Flag
	global motor_flag
	global left_speed
	global right_speed
	global left_speed_hold
	global right_speed_hold
	global Path_Dect_on
	global IPV4toSERIAL_sw
	global IPV4toSERIAL_exitFlag
	global TTS_speakWait
	global TTS_speakStart
	global radarKeepDist
	global radarDir
	global hbCnt
	global app_linked
	Ser2Udp('Communication_decoding...')
	if buffer[0]=='00':
		dir = hex(eval('0x'+buffer[1][1]));
		dir = int(dir,16)
		dly = hex(eval('0x'+buffer[1][0]));
		dly = int(dly,16)
		if dir==1:				#前进
			Motor_Forward()
		elif dir==2:			#后退
			Motor_Backward()
		elif dir==3:			#左转
			Motor_TurnLeft()
		elif dir==4:			#右转
			Motor_TurnRight()
		else:       			#停止
			Motor_Stop()
		if( (dly>0) and (dir>=1) and (dir<=4) ):
			time.sleep(dly*0.02)
			Motor_Stop()
	elif buffer[0]=='02':
		if buffer[1]=='02':#左速度
			speed=hex(eval('0x'+buffer[2]))
			speed=int(speed,16)
			ENA_Speed(speed)
		elif buffer[1]=='01':#右侧速度
			speed=hex(eval('0x'+buffer[2]))
			speed=int(speed,16)
			ENB_Speed(speed)
	elif buffer[0]=='01':
		angle=hex(eval('0x'+buffer[2]))
		angle=int(angle,16)
		if buffer[1]=='01':#1号舵机驱动
			SetServoAngle(1,angle)
		elif buffer[1]=='02':#2号舵机驱动
			SetServoAngle(2,angle)
		elif buffer[1]=='03':#3号舵机驱动
			SetServoAngle(3,angle)
		elif buffer[1]=='04':#4号舵机驱动
			SetServoAngle(4,angle)
		elif buffer[1]=='05':#5号舵机驱动
			SetServoAngle(5,angle)
		elif buffer[1]=='06':#6号舵机驱动
			SetServoAngle(6,angle)
		elif buffer[1]=='07':#7号舵机驱动
			SetServoAngle(7,angle)
		elif buffer[1]=='08':#8号舵机驱动
			SetServoAngle(8,angle)
		else:
			Ser2Udp('舵机编号无效')
	elif buffer[0]=='13':
		if buffer[1]=='01':
			Cruising_Flag = 1#进入红外跟随模式
			Ser2Udp('Cruising_Flag红外跟随模式 %d '%Cruising_Flag)
		elif buffer[1]=='02':#进入红外巡线模式
			Cruising_Flag = 2
			Ser2Udp('Cruising_Flag红外巡线模式 %d '%Cruising_Flag)
		elif buffer[1]=='03':#进入红外避障模式
			Cruising_Flag = 3
			Ser2Udp('Cruising_Flag红外避障模式 %d '%Cruising_Flag)
		elif buffer[1]=='04':#进入超声波壁障模式
			Cruising_Flag = 4
			Ser2Udp('Cruising_Flag超声波壁障 %d '%Cruising_Flag)
		elif buffer[1]=='05':#进入超声波距离PC显示
			Cruising_Flag = 5
			Ser2Udp('Cruising_Flag超声波距离PC显示 %d '%Cruising_Flag)
		elif buffer[1]=='06':
			Cruising_Flag = 6
			Ser2Udp('Cruising_Flag超声波遥控壁障 %d '%Cruising_Flag)
		elif buffer[1]=='07':
			left_speed_hold=left_speed
			right_speed_hold=right_speed
			tcpCliSock.send("$3,"+str(left_speed)+","+str(right_speed)+"%");
			Cruising_Flag = 7
		elif buffer[1]=='08':
			if buffer[2]=='00':#Path_Dect 调试模式
				Path_Dect_on = 0
				Cruising_Flag = 8
				Ser2Udp('Cruising_Flag Path_Dect调试模式 %d '%Cruising_Flag)
				#os.system('sh start_mjpg_streamer.sh')
			elif buffer[2]=='01':#Path_Dect 循迹模式
				#os.system('sh stop_mjpg_streamer.sh')
				call("sh stop_mjpg_streamer.sh &",shell=True)
				time.sleep(2)
				Path_Dect_on = 1
				Cruising_Flag = 9
				Ser2Udp('Cruising_Flag Path_Dect循迹模式 %d '%Cruising_Flag)
		elif buffer[1]=='00':
			RevStatus=0
			Cruising_Flag = 0
			Ser2Udp('Cruising_Flag正常模式 %d '%Cruising_Flag)
		#else:
			#Cruising_Flag = 0
	elif buffer[0]=='a0':
		RevStatus=2
		Tangle=hex(eval('0x'+buffer[1]))
		Tangle=int(Tangle,16)
		TurnAngle=Tangle
		Golen=hex(eval('0x'+buffer[2]))
		Golen=int(Golen,16)
		Golength=Golen
	elif buffer[0]=='a1':
		RevStatus=1
		Tangle=hex(eval('0x'+buffer[1]))
		Tangle=int(Tangle,16)
		TurnAngle=Tangle
		Golen=hex(eval('0x'+buffer[2]))
		Golen=int(Golen,16)
		Golength=Golen
	elif buffer[0]=='40':
		temp=hex(eval('0x'+buffer[1]))
		temp=int(temp,16)
		Ser2Udp('mode_flag====== %d '%temp)
		motor_flag=temp
	elif buffer[0]=='32':		#存储角度
		XRservo.XiaoRGEEK_SaveServo()
	elif buffer[0]=='33':		#读取角度
		XRservo.XiaoRGEEK_ReSetServo()
	elif buffer[0]=='04':		#开关灯模式 FF040000FF开灯  FF040100FF关灯
		if buffer[1]=='00':
			Open_Light()
		elif buffer[1]=='01':
			Close_Light()
		else:
			Ser2Udp('error1 command!')
	elif buffer[0]=='05':		#读取电压 FF050000FF
		if buffer[1]=='00':
			Vol = XRservo.XiaoRGEEK_ReadVol()
			Ser2Udp('Read_Voltage %d '%Vol)
		else:
			Ser2Udp('error2 command!')
	elif buffer[0]=='06':		#读取脉冲 FF060000FF读取脉冲1号  FF060100FF读取脉冲2号
		if buffer[1]=='00':
			Speed1 = XRservo.XiaoRGEEK_SpeedCounter1()
			Ser2Udp('Read_Voltage %d '%Speed1)
		elif buffer[1]=='01':
			Speed2 = XRservo.XiaoRGEEK_SpeedCounter2()
			Ser2Udp('Read_Voltage %d '%Speed2)
		else:
			Ser2Udp('error3 command!')
	elif buffer[0]=='aa':		#user function...by mhq
		if buffer[1]=='00':           #open ipv4 to serial path,for LD3320 voice recognise
			IPV4toSERIAL_sw = 1
			IPV4toSERIAL_exitFlag = 0
			GPIO.output(LED1,True)#流水灯LED1,in dark recieve VR return
			Ser2Udp('IPV4toSERIAL_sw=1, voice recognise!')
		elif buffer[1]=='aa':         #close ipv4 to serial path
			IPV4toSERIAL_sw = 0
			Ser2Udp('IPV4toSERIAL_sw=0')
			IPV4toSERIAL_exitFlag = 0
		elif buffer[1]=='01':         #open ipv4 to serial path,for TTS speak
			IPV4toSERIAL_sw = 2
			IPV4toSERIAL_exitFlag = 0
			TTS_speakWait = int(buffer[2],16)
			TTS_speakStart = time.time()
			GPIO.output(LED1,False)#流水灯LED1,in bright recieve TTS return
			Ser2Udp('IPV4toSERIAL_sw=2,TTS speak! wait={},Start={}'.format(TTS_speakWait,TTS_speakStart))
			tcpCliSock.send("$2,193%")
		elif buffer[1]=='ee':         #user make exception
			IPV4toSERIAL_sw /= 0
			intv = int(b'x03')
		elif buffer[1]=='10':		  #get radar distance
			Send_Distance(True)				
		elif buffer[1]=='11':		  #set radar keep distance
			radarKeepDist = int(buffer[2],16)
			if radarKeepDist<20:
				radarKeepDist = 20
			Ser2Udp('radar keepout distance=%d'%radarKeepDist)
			if( app_linked>0 ): 
				XF_Speak(u"[s10]雷达避障距离%d厘米"%radarKeepDist,2.0)
			tcpCliSock.send("$5,"+str(radarKeepDist)+"%")
		elif buffer[1]=='12':		  #return radar keep distance
			tcpCliSock.send("$5,"+str(radarKeepDist)+"%")
		elif buffer[1]=='13':		  #set radar avoid dir
			radarDir = int(buffer[2],16)
			if radarDir<0:
				radarDir = 0
			Ser2Udp('radar avoid dir=%d'%radarDir)
			if( app_linked>0 ): 
				if( radarDir==0 ):
					XF_Speak(u"[s10]雷达装在车头",2)
				else:	
					XF_Speak(u"[s10]雷达装在车尾",2)
			tcpCliSock.send("$6,"+str(radarDir)+"%")
		elif buffer[1]=='14':		  #return radar avoid dir
			tcpCliSock.send("$6,"+str(radarDir)+"%")
		else:
			Ser2Udp('error mhq command!')
	else:
		Ser2Udp('error4 command!')
		hbCnt = (hbCnt+1)%10
		if( hbCnt==0 ):
			tcpCliSock.send('$9,'+SCRIPT_VER+'%')
		
		
def XF_Speak(msg,spd=1.0,maxtime=-1.0):
#{x110FD000d01005B7631305DBFAACABCC1CB4f08}
#{x110FD000d01005B7631305DBFAACABCC1CB4f08}
	global last_spkTime
	global VR_Exists
	global wd_time
	
	if(maxtime<0):
		maxtime = (len(msg)/2.0)/spd
	msg = "[v10]"+msg
	Ser2Udp(msg.encode('utf8'));
	if( not VR_Exists ):
		return
	line=['{:02X}'.format(ord(i)) for i in msg.encode('gbk')]
	#Ser2Udp(line)
	s = ''.join(line)
	if( len(s)>100 ):
		msg = u'[v10]话太长了'
		Ser2Udp(msg.encode('utf8'));
		line=['{:02X}'.format(ord(i)) for i in msg.encode('gbk')]
		#Ser2Udp(line)
		s = ''.join(line)
	len_str = hex(len(s)/2+5)[2:]
	len_str2 = hex(len(s)/2+2)[2:]
	#Ser2Udp(s)
	if( len(len_str)==1 ):
		if( len(len_str2)==1 ):
			final = "{x10"+len_str+"FD000"+len_str2+"0100"+s+"4f{:02x}".format(len(s)/4)+"}";
		else:
			final = "{x10"+len_str+"FD00"+len_str2+"0100"+s+"4f{:02x}".format(len(s)/4)+"}";
	else:
		if( len(len_str2)==1 ):
			final = "{x1"+len_str+"FD000"+len_str2+"0100"+s+"4f{:02x}".format(len(s)/4)+"}";
		else:
			final = "{x1"+len_str+"FD00"+len_str2+"0100"+s+"4f{:02x}".format(len(s)/4)+"}";
	Ser2Udp(final)
	time.sleep(0.2)
	ser.write(final)
	start = time.time()
	while(time.time()-start<maxtime):
		if( ser.inWaiting()>0 ):
			recv = ser.read(1)
			if( (recv=='M') or (recv=='T') ):
				Ser2Udp("*** TTS done ***")
				break
			if( recv==chr(0xFE) ):#heart beat
				wd_time = time.time()
				Ser2Udp("master board heart-beat");
				ser.write('{o9|0}')
	last_spkTime = time.time()			

def XF_Speak_inner(msg,maxtime=-1.0):
#{x110FD000d01005B7631305DBFAACABCC1CB4f08}
#{x110FD000d01005B7631305DBFAACABCC1CB4f08}
	global last_spkTime
	global VR_Exists
	global spk_waitTime
	
	if(maxtime<0):
		maxtime = len(msg)/2.0
	msg = "[v10]"+msg
	Ser2Udp(msg.encode('utf8'));
	if( not VR_Exists ):
		return
	line=['{:02X}'.format(ord(i)) for i in msg.encode('gbk')]
	#Ser2Udp(line)
	s = ''.join(line)
	if( len(s)>100 ):
		msg = u'[v10]话太长了'
		Ser2Udp(msg.encode('utf8'));
		line=['{:02X}'.format(ord(i)) for i in msg.encode('gbk')]
		#Ser2Udp(line)
		s = ''.join(line)
	len_str = hex(len(s)/2+5)[2:]
	len_str2 = hex(len(s)/2+2)[2:]
	#Ser2Udp(s)
	if( len(len_str)==1 ):
		if( len(len_str2)==1 ):
			final = "{x10"+len_str+"FD000"+len_str2+"0100"+s+"4f{:02x}".format(len(s)/4)+"}";
		else:
			final = "{x10"+len_str+"FD00"+len_str2+"0100"+s+"4f{:02x}".format(len(s)/4)+"}";
	else:
		if( len(len_str2)==1 ):
			final = "{x1"+len_str+"FD000"+len_str2+"0100"+s+"4f{:02x}".format(len(s)/4)+"}";
		else:
			final = "{x1"+len_str+"FD00"+len_str2+"0100"+s+"4f{:02x}".format(len(s)/4)+"}";
	Ser2Udp(final)
	time.sleep(0.2)
	ser.write(final)
	spk_waitTime = maxtime*1000
	last_spkTime = time.time()			
	
def LD3320_Config(cfg,flagok,flagno,maxtime=3.0):
	global VR_Exists
	if( not VR_Exists ):
		return
	time.sleep(0.2)
	ser.write(cfg)
	start = time.time()
	recv=0
	while(time.time()-start<maxtime):
		if( ser.inWaiting()>0 ):
			recv = ser.read(1)
			#recv2 = binascii.b2a_hex(recv)
			recv = "".join(['{:02X}'.format(ord(i)) for i in recv])
			#Ser2Udp("got:%s"%recv)
			if( recv==flagok ):
				Ser2Udp("配置%s"%cfg+"成功!")
				return True
			elif( recv==flagno ):
				Ser2Udp("配置%s"%cfg+"失败!")
				return False
			##Ser2Udp('~~Serial got {}  inWaiting={}'.format(recv2,ser.inWaiting()))
			##try:
			##	recv2 = int(str(recv2),16)|128
			##except:
			##	recv2 = 128
			##if( recv2==254 ):#254 是语音模块的心跳消息，回应格式{o9|0}
			##	Ser2Udp("~~master board heartbeat!");
			##	wd_time = time.time()
			##	ser.write("{o9|0}");
			##	time.sleep(0.1);
	if( recv==0 ):
		XF_Speak(u"串口无返回")
		if( mp3StartTime==0.0 ):
			pygame.mixer.music.load('./mp3/TTS_ser_failed.mp3')
			pygame.mixer.music.set_volume(1.0)
			pygame.mixer.music.play()
			time.sleep(5)
			pygame.mixer.music.stop()
			VR_Exists = False
	else:
		val = int(hex(eval('0x'+recv)),16)
		#XF_Speak(u"串口返回%d"%val)
		return True
	return False
				
def LD3320_Config3(cfg,flag1,flag2,flag3,maxtime=6.0):	
	global VR_Exists
	if( not VR_Exists ):
		return
	time.sleep(0.2)
	ser.write(cfg)
	start = time.time()
	ST=0
	while(time.time()-start<maxtime):
		if( ser.inWaiting()>0 ):
			recv = ser.read(1)
			#recv2 = binascii.b2a_hex(recv)
			recv = "".join(['{:02X}'.format(ord(i)) for i in recv])
			#Ser2Udp("got:%s"%recv)
			if(ST==0):
				if( recv==flag1 ):
					ST=1
			elif(ST==1):
				if( recv==flag2 ):
					ST=2
			elif(ST==2):
				if( recv==flag3 ):
					ST=3
					Ser2Udp("配置%s"%cfg+"成功!")
					return True
			# Ser2Udp('~~Serial got {}  inWaiting={}'.format(recv2,ser.inWaiting()))
			# try:
				# recv2 = int(str(recv2),16)|128
			# except:
				# recv2 = 128
			# if( recv2==254 ):#254 是语音模块的心跳消息，回应格式{o9|0}
				# Ser2Udp("~~master board heartbeat!");
				# wd_time = time.time()
				# ser.write("{o9|0}");
				# time.sleep(0.1);
	if(ST==0):
		XF_Speak(u"串口无返回")
		if( mp3StartTime==0.0 ):
			pygame.mixer.music.load('./mp3/TTS_ser_failed.mp3')
			pygame.mixer.music.set_volume(1.0)
			pygame.mixer.music.play()
			time.sleep(5)
			pygame.mixer.music.stop()
			VR_Exists = False
	return False

def Init_LD3320():
	if( not VR_Exists ):
		return
	XF_Speak(u"请稍候.准备恢复语音配置参数");
	Ser2Udp('setup voice recognise module.')
	time.sleep(1.2);
	ser.write("{c0}");
	time.sleep(0.5);
	filename = 'voiceDefine.txt' # txt文件和当前脚本在同一目录下，所以不用写具体路径
	rcvCount = 0
	with open(filename, 'r') as file_to_read:
		while True:
			lines = file_to_read.readline() # 整行读取数据
			if not lines:
				break
			p_tmp = lines.split('\n')[0] # 将整行数据分割处理，如果分割符是空格，括号里就不用传入参数，如果是逗号， 则传入‘，'字符。
			time.sleep(0.5);
			rcvCount = rcvCount+1
			while( ser.inWaiting()>0 ):
				recv = ser.read(1)
				recv = binascii.b2a_hex(recv)
				Ser2Udp('~~Serial got {}  inWaiting={}'.format(recv,ser.inWaiting()))
				try:
					recv = int(str(recv),16)|128
				except:
					recv = 128
				if( recv==254 ):#254 是语音模块的心跳消息，回应格式{o9|0}
					Ser2Udp("~~master board heartbeat!");
					wd_time = time.time()
					ser.write("{o9|0}");
					time.sleep(0.5);
			Ser2Udp('{a0%s}'%p_tmp)
			ser.write('{a0%s}'%p_tmp);	
	pass
	time.sleep(0.5);
	ser.write("{f0EE}");
	Ser2Udp('end init serial...')
	#XF_Speak(u"%d条语音初始化完成"%rcvCount)
	#XF_Speak(u"请插拔声控模块的电源线");
	#XF_Speak(u"看看播报的是否%d条来确认"%rcvCount);
	time.sleep(0.5);
	LD3320_Config('{gA}','46','00');
	time.sleep(5.5);

def extSerProcess(data):
	global Cruising_Flag
	global autoServoAdj
	global motor_dir
	global radarDir
	global radarKeepDist
	Ser2Udp("收到外部声控模拟命令..."+data[7:])
	rcv = string.atoi(data[7:])
	if( (rcv>=128) and (rcv<200) ):
		if( rcv==128 ):
			XF_Speak(u"[s10]基本动作[d]",2.0)
		elif( rcv==129 ):
			XF_Speak(u"[s10]摇头晃脑[d]",2.0)
		elif( rcv==130 ):
			XF_Speak(u"[s10]点头示意[d]",2.0)
		elif( rcv==131 ):
			XF_Speak(u"[s10]友好握爪[d]",2.0)
		elif( rcv==132 ):
			XF_Speak(u"[s10]蓝翔附体[d]",2.0)
		elif( rcv==133 ):
			XF_Speak(u"[s10]任务终结[d]",2.0)
		elif( rcv==134 ):
			XF_Speak(u"[s10]丹步锁定[d]",2.0)
		elif( rcv==135 ):
			XF_Speak(u"[s10]下一步[d]",2.0)
		time.sleep(0.5);
		tcpCliSock.send('$2,'+data[7:]+'%')	
	else:
		if( rcv==200 ):
			if( Cruising_Flag!=3 ):
				Cruising_Flag = 3
				XF_Speak(u"红外避障")
				Ser2Udp('Cruising_Flag红外避障模式 %d '%Cruising_Flag)
		elif( rcv==201 ):
			if( Cruising_Flag!=1 ):
				Cruising_Flag = 1#进入红外跟随模式
				XF_Speak(u"红外跟随")
				Ser2Udp('Cruising_Flag红外跟随模式 %d '%Cruising_Flag)
		elif( rcv==202 ):
			if( Cruising_Flag!=2 ):
				Cruising_Flag = 2
				XF_Speak(u"红外巡线")
				Ser2Udp('Cruising_Flag红外巡线模式 %d '%Cruising_Flag)
		elif( rcv==203 ):
			if( Cruising_Flag!=4 ):
				Cruising_Flag = 4
				XF_Speak(u"超声避障")
				Ser2Udp('Cruising_Flag超声波壁障 %d '%Cruising_Flag)
		elif( rcv==209 ):
			if( Cruising_Flag!=0 ):
				Motor_Stop()
				XF_Speak(u"回到手动")
				Cruising_Flag = 0
				Ser2Udp('Cruising_Flag正常模式 %d '%Cruising_Flag)
		elif( rcv==210 ):
			if( motor_dir!=0 ):
				Motor_Forward()
				Cruising_Flag = 0
				XF_Speak(u"进击",1,0)
				Ser2Udp('执行前进命令')
		elif( rcv==211 ):
			if( motor_dir!=1 ):
				Motor_Backward()
				Cruising_Flag = 0
				XF_Speak(u"撤退",1,0)
				Ser2Udp('执行后退命令')
		elif( rcv==212 ):
			if( motor_dir!=2 ):
				Motor_TurnLeft()
				Cruising_Flag = 0
				XF_Speak(u"左拐",1,0)
				Ser2Udp('执行左转命令')
		elif( rcv==213 ):
			if( motor_dir!=3 ):
				Motor_TurnRight()
				Cruising_Flag = 0
				XF_Speak(u"右拐",1,0)
				Ser2Udp('执行右转命令')
		elif( rcv==214 ):
			if( motor_dir!=4 ):
				Motor_Stop()
				Cruising_Flag = 0
				XF_Speak(u"齁住",1,0)
				Ser2Udp('执行停止命令')
		elif( rcv==220 ):
			radarDir = 0
			Ser2Udp('radar avoid dir=%d'%radarDir)
			XF_Speak(u"[s10]超声波装在车头",2)			
			tcpCliSock.send("$6,"+str(radarDir)+"%")
		elif( rcv==221 ):
			radarDir = 1
			Ser2Udp('radar avoid dir=%d'%radarDir)
			XF_Speak(u"[s10]超声波装在车尾",2)		
			tcpCliSock.send("$6,"+str(radarDir)+"%")
		elif( (rcv>230) and (rcv<=240) ):
			radarKeepDist = (rcv-230)*20
			if radarKeepDist<20:
				radarKeepDist = 20
			Ser2Udp('radar keepout distance=%d'%radarKeepDist)
			XF_Speak(u"[s10]超声波避障距离%d厘米"%radarKeepDist,2)
			tcpCliSock.send("$5,"+str(radarKeepDist)+"%")
		elif( (rcv>250) and (rcv<=270) ):
			ENB_Speed((rcv-250)*5)
			XF_Speak(u"[s10]左轮速度%d"%((rcv-250)*5),2)
		elif( (rcv>270) and (rcv<=290) ):
			ENA_Speed((rcv-270)*5)
			XF_Speak(u"[s10]右轮速度%d"%((rcv-270)*5),2)
		elif( (rcv>309) and rcv<(390) ):	
			if( (rcv%10)<5 ):
				autoServoAdj = int((rcv-300)/10)*1000+(rcv%10)		#增加角度
				##SetServoAngle(int((rcv-300)/10),1001+(rcv%10))		#增加角度
			elif( (rcv%10)>5 ):
				autoServoAdj = -(int((rcv-300)/10)*1000+(rcv%10)-5)	#减少角度
				##SetServoAngle(int((rcv-300)/10),-1000-(rcv%10)+5)		#增加角度
		elif( rcv==300 ):
			autoServoAdj = 0		
		elif( rcv==999 ):
			call("sh stop_mjpg_streamer.sh &",shell=True)
		elif( rcv==888 ):
			call("sh start_mjpg_streamer.sh &",shell=True)			
	showVRFlag()

def circle_run():
	if( autoServoAdj>0 ):
		SetServoAngle(int(autoServoAdj/1000),autoServoAdj%1000+1001)
	elif( autoServoAdj<0 ):
		SetServoAngle(int(-autoServoAdj/1000),-1000-(-autoServoAdj%1000))	


def simProcess(recv):
	global RevStatus
	global VR_Flag
	if( not VR_Exists ):
		return
	recv = binascii.b2a_hex(recv)
	Ser2Udp('sim VR got {}'.format(recv))
	try:
		recv = int(str(recv),16)|128
	except:
		recv = 128
	if( ser_changed==0 ):#内置声控流程标识为0表示还在内置流程，否则已退出内置流程
		if( recv==128 ): #小车
			XF_Speak(u"[s10]洞幺[d]",2.0)
		elif( recv==129 ):
			if( VR_Flag==VR_State.W_NAME ):
				XF_Speak(u"[s10]智能机器人[d]",2.0)
		elif( recv==138 ):
			if( VR_Flag!=VR_State.W_SYS):
				XF_Speak(u"[s10]系统[d]",2.0)
		elif( recv==140 ):
			XF_Speak(u"[s10]唱个歌[d]",2.0)
		elif( recv==147 ):
			XF_Speak(u"[s10]笨死了[d]",2.0)
		elif( recv==148 ):
			XF_Speak(u"[s10]前进[d]",2.0)
		elif( recv==150 ):
			XF_Speak(u"[s10]左转[d]",2.0)
		elif( recv==151 ):
			XF_Speak(u"[s10]距离[d]",2.0)
		elif( recv==152 ):
			XF_Speak(u"[s10]右转[d]",2.0)
		elif( recv==153 ):
			XF_Speak(u"[s10]传感器[d]",2.0)
		elif( recv==154 ):
			XF_Speak(u"[s10]跟随[d]",2.0)
		elif( recv==155 ):
			XF_Speak(u"[s10]循迹[d]",2.0)
		elif( recv==156 ):
			XF_Speak(u"[s10]避障[d]",2.0)
		elif( recv==157 ):
			XF_Speak(u"[s10]来找我[d]",2.0)
		elif( recv==158 ):
			XF_Speak(u"[s10]你好棒[d]",2.0)
		elif( recv==159 ):
			XF_Speak(u"[s10]真聪明[d]",2.0)
		elif( recv==160 ):
			XF_Speak(u"[s10]停止[d]",2.0)
		elif( recv==161 ):
			XF_Speak(u"[s10]停止[d]",2.0)
		elif( recv==166 ):
			if( VR_Flag!=VR_State.W_CFM1):
				XF_Speak(u"[s10]复位[d]",2.0)
		elif( recv==162 ):
			XF_Speak(u"[s10]左转[d]",2.0)
		elif( recv==163 ):
			XF_Speak(u"[s10]右转[d]",2.0)
		elif( recv==164 ):
			XF_Speak(u"[s10]前进[d]",2.0)
		elif( recv==165 ):
			XF_Speak(u"[s10]后退[d]",2.0)
		elif( recv==168 ):
			XF_Speak(u"[s10]再来[d]",2.0)
		elif( recv==169 ):
			XF_Speak(u"[s10]播报[d]",2.0)
		elif( recv==173 ):
			XF_Speak(u"[s10]确定[d]",2.0)
		elif( recv==174 ):
			XF_Speak(u"[s10]取消[d]",2.0)
	return recv

	
def serProcess(recv):
	global RevStatus
	global VR_Flag
	global VR_FlagSkip
	global VR_Reply
	global VR_VehMove
	global Cruising_Flag
	global reboot_Ctrl
	global VR_OpTime
	global mp3StartTime
	global mp3AliveTime
	global wd_time
	if( not VR_Exists ):
		return
	recv = binascii.b2a_hex(recv)
	Ser2Udp('Serial got {}  inWaiting={}'.format(recv,ser.inWaiting()))
	try:
		recv = int(str(recv),16)|128
	except:
		recv = 128
	if( ser_changed==0 ):#内置声控流程标识为0表示还在内置流程，否则已退出内置流程
		if( (recv<180) ):
			if( recv==128 ): #小车
				VR_Flag = VR_State.P_NAME
			else:
				if( VR_Flag==VR_State.W_NAME ):
					if( recv==129 ):
						VR_Flag = VR_State.P_CMD
				elif( VR_Flag==VR_State.W_CMD ):
					VR_Flag = VR_State.P_STPMV
					if(recv==138): #系统命令
						XF_Speak(u"[s10]进入系统命令模式",2.0)
						VR_VehMove=False
						VR_Flag = VR_State.P_SYS
					elif(recv==140): #放首歌
						sndID = int(random.random()*9)
						XF_Speak(u'[s10]你听好，我唱给你听，文件名%d.MP3'%sndID,2)
						try:
							pygame.mixer.music.load('./mp3/%d.mp3'%sndID)
							pygame.mixer.music.set_volume(1.0)
							pygame.mixer.music.play(0,random.random()*60.0+5.0)
							#time.sleep(60.0+random.random()*60.0)
							mp3AliveTime = 60.0+random.random()*60.0
							mp3StartTime = time.time()
							#while(time.time()-start<alive):
							#	if( ser.inWaiting()>0 ):
							#		recv = ser.read(1)
							#		if( recv==chr(0xFE) ):#heart beat
							#			Ser2Udp("master board heart-beat");
							#			ser.write('{o9|0}')
							#pygame.mixer.music.fadeout(1000)
						except Exception as e:
							XF_Speak(u'MP3播放失败，请查看文件是否存在')
							pass
						VR_VehMove=False
						VR_Flag=VR_State.DONE					
					elif(recv==147): #笨死了
						sndID = int((random.random()*24+301))
						XF_Speak('sound%d'%sndID);
						time.sleep(1.0)
						XF_Speak(u'[m55]我好伤心，请多包涵[m3]',1.0,3.0)
						VR_VehMove=False
						VR_Flag=VR_State.DONE
					elif(recv==148): #前进
						XF_Speak(u"走起")
						Motor_Forward()
						VR_VehMove=True
					elif (recv==149):#后退
						XF_Speak(u"撤退")
						Motor_Backward()
						VR_VehMove=True
					elif (recv==150):#左转
						XF_Speak(u"转向左边")
						Motor_TurnLeft()
						VR_VehMove=True
					elif (recv==151):#距离
						dis_send = int(Get_Distence()+0.5)
						if((dis_send>=3400) or (dis_send<=20)):
							time.sleep(0.2)
							dis_send2 = int(Get_Distence()+0.5)
							if((dis_send2>=3400) or (dis_send2<=20)):
								time.sleep(0.2)
								dis_send3 = int(Get_Distence()+0.5)
							else:
								dis_send3 = 3410
							if((dis_send2<3400) and (dis_send2>20)):
								dis_send = dis_send2
							if((dis_send3<3400) and (dis_send3>20)):
								dis_send = dis_send3
						RADAR_DIST = dis_send		
						Ser2Udp('Distance: %d mm' %dis_send)
						XF_Speak(u"超声%d毫米" %dis_send)
						VR_VehMove=False
						VR_Flag=VR_State.DONE
					elif (recv==152):#右转
						XF_Speak(u"转向右边")
						Motor_TurnRight()
						VR_VehMove=True
					elif (recv==153):#报告传感器状态
						XF_Speak(u"[s10]红外触发有:",2,2.0)
						if( (GPIO.input(IR_L)==False) ):
							time.sleep(0.5)
							XF_Speak(u"[s10]左下",2);
						if( (GPIO.input(IR_R)==False) ):
							time.sleep(0.5)
							XF_Speak(u"[s10]右下",2);
						if( (GPIO.input(IR_M)==False) ):
							time.sleep(0.5)
							XF_Speak(u"[s10]中间",2);
						if( (GPIO.input(IRF_R)==False) ):
							time.sleep(0.5)
							XF_Speak(u"[s10]上方左边",2);
						if( (GPIO.input(IRF_L)==False) ):
							time.sleep(0.5)
							XF_Speak(u"[s10]上方右边",2);
						time.sleep(0.5)
						VR_VehMove=False
						VR_Flag=VR_State.DONE
					elif (recv==154):#跟随
						Ser2Udp('Cruising_Flag红外跟随模式 %d '%Cruising_Flag)
						XF_Speak(u"追你到死")
						Cruising_Flag = 1#进入红外跟随模式
						VR_VehMove=True
						VR_Flag = VR_State.P_STP
					elif (recv==155):#循迹
						Ser2Udp('Cruising_Flag红外巡线模式 %d '%Cruising_Flag)
						XF_Speak(u"绕圈圈")
						Cruising_Flag = 2
						VR_VehMove=True
						VR_Flag = VR_State.P_STP
					elif (recv==156):#避障
						Ser2Udp('Cruising_Flag红外避障模式 %d '%Cruising_Flag)
						XF_Speak(u"我躲")
						Cruising_Flag = 3
						VR_VehMove=True
						VR_Flag = VR_State.P_STP
					elif (recv==157):#找我
						XF_Speak(u"哪儿呢?")
						time.sleep(1.2);
						SetServoAngle(7,30)
						#XRservo.XiaoRGEEK_SetServo(0x07,30)
						time.sleep(0.2);
						XF_Speak(u"嗯?")
						time.sleep(1.2);
						XRservo.XiaoRGEEK_SetServo(0x07,60)
						time.sleep(0.2);
						XF_Speak(u"嗯?")
						time.sleep(1.2);
						XRservo.XiaoRGEEK_SetServo(0x07,90)
						time.sleep(0.2);
						XF_Speak(u"咦?")
						time.sleep(1.2);
						XRservo.XiaoRGEEK_SetServo(0x07,120)
						time.sleep(0.2);
						XF_Speak(u"咦?")
						time.sleep(1.2);
						XRservo.XiaoRGEEK_SetServo(0x07,150)
						time.sleep(0.2);
						XF_Speak(u"找不到算球")
						time.sleep(1.2);
						XRservo.XiaoRGEEK_SetServo(0x07,90)
						time.sleep(0.2);
						VR_VehMove=False
						VR_Flag=VR_State.DONE
					elif(recv==158):#你好棒
						XF_Speak(u'[m54]谢谢夸奖，一定继续努力[m3]',1,3.0)
						VR_VehMove=False
						VR_Flag=VR_State.DONE
					elif(recv==159):#真聪明
						sndID = int((random.random()*24+201))
						XF_Speak('sound%d'%sndID);
						time.sleep(1.0)
						XF_Speak(u'[m55]我好开心，哈哈哈哈[m3]',1,3.0)
						VR_VehMove=False
						VR_Flag=VR_State.DONE
					elif(recv==129):#重复智能机器人
						time.sleep(0.0001)	
						VR_Flag = VR_State.P_CMD
					else:
						Motor_Stop()
						RevStatus=0
						Cruising_Flag = 0
						Ser2Udp('Cruising_Flag正常模式 %d '%Cruising_Flag)
						XF_Speak(u"异常%d"%recv)
						VR_VehMove=False
						VR_Flag=VR_State.ERROR
				elif( VR_Flag==VR_State.W_STPMV ):
					if( (recv==160) or (recv==161) ):
						Motor_Stop()
						RevStatus=0
						Cruising_Flag = 0
						Ser2Udp('Cruising_Flag正常模式 %d '%Cruising_Flag)
						XF_Speak(u"[s10]休息",2.0)
						VR_VehMove=False
						VR_Flag=VR_State.DONE
					elif ( (recv==162) or (recv==150)):
						XF_Speak(u"[s10]转向左边",2.0)
						Motor_TurnLeft()
						VR_VehMove=True
						VR_OpTime = time.time()
					elif ( (recv==163) or (recv==152) ):
						XF_Speak(u"[s10]转向右边",2.0)
						Motor_TurnRight()
						VR_VehMove=True
						VR_OpTime = time.time()
					elif ( (recv==164) or (recv==148) ):
						XF_Speak(u"[s10]走起",2.0)
						Motor_Forward()
						VR_VehMove=True
						VR_OpTime = time.time()
					elif ( (recv==165) or (recv==149) ):
						XF_Speak(u"[s10]撤退",2.0)
						Motor_Backward()
						VR_VehMove=True
						VR_OpTime = time.time()
				elif( VR_Flag==VR_State.W_STP ):
					if ( (recv==160) or (recv==161)  ):
						Motor_Stop()
						RevStatus=0
						Cruising_Flag = 0
						Ser2Udp('Cruising_Flag正常模式 %d '%Cruising_Flag)
						XF_Speak(u"[s10]休息",2.0)
						VR_VehMove=False
						VR_Flag=VR_State.DONE
					else:
						Motor_Stop()
						RevStatus=0
						Cruising_Flag = 0
						Ser2Udp('Cruising_Flag正常模式 %d '%Cruising_Flag)
						XF_Speak(u"[s10]意外%d"%recv,2.0)
						VR_VehMove=False
						VR_Flag=VR_State.ERROR
				elif( VR_Flag==VR_State.W_SYS ):
					if(recv==166):		#复位
						VR_VehMove=False
						VR_Flag=VR_State.P_CFM1
					elif(recv==167):	#语音列表
						XF_Speak(u"[s10]待开发内容，尚未完成.",2.0)
						VR_VehMove=False
						VR_Flag=VR_State.DONE
					elif(recv==168):	#重来
						VR_VehMove=False
						VR_Flag=VR_State.P_CFM2
					elif(recv==169):	#播报
						LD3320_Config('{p0}','46','00')
						time.sleep(2.0)
						LD3320_Config('{p1}','46','00')
						time.sleep(2.0)
						LD3320_Config('{p2}','46','00')
						time.sleep(2.0)
						LD3320_Config('{p3}','46','00')
						time.sleep(2.0)
						LD3320_Config('{p4}','46','00')
						time.sleep(2.0)
						LD3320_Config('{p5}','46','00')
						time.sleep(2.0)
						VR_VehMove=False
						VR_Flag=VR_State.DONE
					elif(recv==138):	#重复的SYS命令
						VR_VehMove=False
					else:
						XF_Speak(u"退出系统命令.")
						VR_VehMove=False
						VR_Flag=VR_State.DONE
				elif( VR_Flag==VR_State.W_CFM1 ):
					if(recv==173):
						XF_Speak(u"[s10]开始复位.",2.0)
						#LD3320_Config("{c0}",'46','00');
						time.sleep(2.0)
						Init_LD3320()
						XF_Speak(u"[s10]复位完成.",2.0)
						time.sleep(2.0)
						#while(True):
						#	time.sleep(2.0)
						#	XF_Speak(u"请下电重启.")
						VR_VehMove=False
						VR_Flag=VR_State.DONE
					elif(recv==166):		#重复的复位
						VR_VehMove=False
					elif(recv==168):	#重复的重来
						VR_VehMove=False
					else:	
						XF_Speak(u"[s10]取消复位.",2.0)
						VR_VehMove=False
						VR_Flag=VR_State.DONE
				elif( VR_Flag==VR_State.W_CFM2 ):
					if(recv==173):
						XF_Speak(u"[s10]脚本即将重启，请稍候.",2.0)
						reboot_Ctrl=1726435
						ser.close()
						#tcpSerSock.close()
						udpSock.close()
						#call('sh restart_wb.sh &',shell=True)
						sys.exit()
					else:	
						XF_Speak(u"[s10]取消重启.",2.0)
						VR_VehMove=False
						VR_Flag=VR_State.DONE
				elif( VR_Flag==VR_State.W_CFM3 ):
					XF_Speak(u"[s10]待开发内容，尚未完成.",2.0)
					VR_VehMove=False
					VR_Flag=VR_State.DONE
				#else:
				#	Motor_Stop()
				#	RevStatus=0
				#	Cruising_Flag = 0
				#	Ser2Udp('Cruising_Flag正常模式 %d '%Cruising_Flag)
				#	VR_Reply = "b4edcef3" #错误
				#	VR_VehMove=False
				#	VR_Flag=VR_State.ERROR	
		else:
			VR_FlagSkip = True
	else:
		VR_Flag = VR_State.FREE;
	if( recv==205 ): #205 means TTS done
		Ser2Udp('TTS done! at {}'.format(time.time()))
		#time.sleep(1.0)#这里为啥等1秒？
		#TTS_speakWait = 0
		if( TTS_speakStart>0 ):
			TTS_speakWait = time.time()-TTS_speakStart+1.0
		else:
			TTS_speakWait = 0
		GPIO.output(LED1,True)#流水灯LED1,in dark recieve VR return
	if( recv==254 ):#254 是语音模块的心跳消息，回应格式{o9|0}
		##Ser2Udp("master board heartbeat!");
		wd_time = time.time()
		ser.write("{o9|0}");
	return recv

def showVRFlag():
	global VR_FlagOld
	global VR_Flag
	global VR_OpTime
	global VR_TimeOut
	if( not VR_Exists ):
		return
	if( VR_Flag!=VR_FlagOld ):
		Ser2Udp("VR_Flag改变!{}==>{}".format(VR_FlagOld,VR_Flag))
		Ser2Udp("VR_OpTime={},TimeOut={}".format(VR_OpTime,VR_TimeOut))
		VR_FlagOld = VR_Flag
		
def processVRFlag():
	global VR_FlagSkip
	global VR_FlagSkip
	global oldVRSensity
	global VR_Reply
	global VR_Flag
	global VR_OpTime
	global VR_TimeOut
	global VRC_CMD_TimeOut
	global VRC_MV_TimeOut
	if( not VR_Exists ):
		return
	if( VR_FlagSkip ):
		Ser2Udp("跳过这个字节")
		VR_FlagSkip = False
	else:	
		if( VR_Flag==VR_State.P_NAME ):
			XF_Speak(u"[s10]叫我名字",3.0);
			if( not udp_ctlVRAll ):
				LD3320_Config3("{g600}",'E6','F0','F0')
				LD3320_Config3("{g704}",'E7','F0','F4')#只识别口令
				LD3320_Config3("{g900}",'E9','F0','F0')#强制退出识别,同时复位LD3320
			VR_Flag=VR_State.W_NAME;
		elif(VR_Flag==VR_State.P_STP):
			Ser2Udp("准备识别停止指令...")
			if( not udp_ctlVRAll ):
				LD3320_Config3("{g620}",'E6','F2','F0')
				LD3320_Config3("{g721}",'E7','F2','F1')#只识别停止类口令
				LD3320_Config3("{g900}",'E9','F0','F0')#强制退出识别,同时复位LD3320
			VR_Flag=VR_State.W_STP;
			VR_OpTime = time.time()
			VR_TimeOut = VRC_MV_TimeOut
		elif(VR_Flag==VR_State.P_STPMV):
			Ser2Udp("准备识别停止/移动指令...")
			if( not udp_ctlVRAll ):
				LD3320_Config3("{g620}",'E6','F2','F0')
				LD3320_Config3("{g725}",'E7','F2','F5')#只识别停止/移动类口令
				LD3320_Config3("{g900}",'E9','F0','F0')#强制退出识别,同时复位LD3320
			VR_Flag=VR_State.W_STPMV;
			VR_OpTime = time.time()
			VR_TimeOut = VRC_MV_TimeOut
		elif(VR_Flag==VR_State.P_CMD):
			Ser2Udp("准备识别动作命令...")
			if( not udp_ctlVRAll ):
				LD3320_Config3("{g605}",'E6','F0','F5')
				LD3320_Config3("{g71f}",'E7','F1','FF')#只识别动作口令
				LD3320_Config3("{g900}",'E9','F0','F0')#强制退出识别,同时复位LD3320
			XF_Speak(u"我在");
			VR_OpTime = time.time()
			VR_TimeOut = VRC_CMD_TimeOut
			VR_Flag=VR_State.W_CMD;
		elif(VR_Flag==VR_State.P_SYS):
			Ser2Udp("准备识别系统命令...")
			if( not udp_ctlVRAll ):
				LD3320_Config3("{g626}",'E6','F2','F6')
				LD3320_Config3("{g72c}",'E7','F2','FC')#只识别系统口令
				LD3320_Config3("{g900}",'E9','F0','F0')#强制退出识别,同时复位LD3320
			XF_Speak(u"[s8]请说命令",2);
			VR_Flag=VR_State.W_SYS
			VR_OpTime = time.time()
			VR_TimeOut = VRC_CMD_TimeOut
		elif(VR_Flag==VR_State.P_CFM1):
			Ser2Udp("准备识别确认命令模式一...")
			if( not udp_ctlVRAll ):
				LD3320_Config3("{g62d}",'E6','F2','FD')
				LD3320_Config3("{g72f}",'E7','F2','FF')#只识别确认口令
				LD3320_Config3("{g900}",'E9','F0','F0')#强制退出识别,同时复位LD3320
			XF_Speak(u"[s8]回答确定复位",2)
			VR_Flag=VR_State.W_CFM1
			VR_OpTime = time.time()
			VR_TimeOut = VRC_CMD_TimeOut
		elif(VR_Flag==VR_State.P_CFM2):
			Ser2Udp("准备识别确认命令模式二...")
			if( not udp_ctlVRAll ):
				LD3320_Config3("{g62d}",'E6','F2','FD')
				LD3320_Config3("{g72f}",'E7','F2','FF')#只识别确认口令
				LD3320_Config3("{g900}",'E9','F0','F0')#强制退出识别,同时复位LD3320
			XF_Speak(u"[s8]回答确定重启",2)
			VR_Flag=VR_State.W_CFM2
			VR_OpTime = time.time()
			VR_TimeOut = VRC_CMD_TimeOut
		elif(VR_Flag==VR_State.P_CFM3):
			Ser2Udp("准备识别确认命令模式三...")
			if( not udp_ctlVRAll ):
				LD3320_Config3("{g62d}",'E6','F2','FD')
				LD3320_Config3("{g72f}",'E7','F2','FF')#只识别确认口令
				LD3320_Config3("{g900}",'E9','F0','F0')#强制退出识别,同时复位LD3320
			#XF_Speak(u"确定要复位?回答确定继续，其他取消.")
			VR_Flag=VR_State.W_CFM3
			VR_OpTime = time.time()
			VR_TimeOut = VRC_CMD_TimeOut
		else:
			if( (VR_Flag==VR_State.ERROR) or (VR_Flag==VR_State.DONE) ):
				Ser2Udp("准备识别口令...")
				if( not udp_ctlVRAll ):
					LD3320_Config3("{g600}",'E6','F0','F0')
					LD3320_Config3("{g704}",'E7','F0','F4')#只识别口令
					LD3320_Config3("{g900}",'E9','F0','F0')#强制退出识别,同时复位LD3320
				XF_Speak(u"[s10]完成，有事叫我",2.0);
				VR_Flag=VR_State.W_NAME;
				VR_OpTime = 0.0
			

def processVRTimeOut():
	global RevStatus
	global VR_OpTime
	global VR_TimeOut
	global VR_Flag
	global VR_VehMove
	global Cruising_Flag
	if( not VR_Exists ):
		return
	if( (VR_OpTime>0.1) and (time.time()-VR_OpTime>VR_TimeOut) ):
		if( VR_TimeOut>VRC_CMD_TimeOut ):
			Motor_Stop()
			RevStatus=0
			Cruising_Flag = 0
			Ser2Udp('Cruising_Flag正常模式 %d '%Cruising_Flag)
			XF_Speak(u"我累了")
			VR_VehMove=False
		VR_Flag = VR_State.W_NAME
		Ser2Udp("准备识别口令...")
		if( not udp_ctlVRAll ):
			LD3320_Config3("{g600}",'E6','F0','F0')
			LD3320_Config3("{g704}",'E7','F0','F4')#只识别口令
			LD3320_Config3("{g900}",'E9','F0','F0')#强制退出识别,同时复位LD3320
		if( VR_TimeOut>VRC_CMD_TimeOut ):
			XF_Speak(u"[s10]完成,有事叫我",2.0);
		else:	
			XF_Speak('sound202');
		VR_OpTime = 0.0

def LD3320_Config3_smp(id,val):
	p_cmd='{:02x}'.format(val)
	p_rp1 = 'E%d'%id
	p_rp2 = 'F%s'%p_cmd[0]
	p_rp3 = 'F%s'%p_cmd[1]
	p_cmd = ('{g%d'%id)+('%s}'%p_cmd)
	Ser2Udp('p_cmd={},p_rp1={},p_rp2={},p_rp3={}'.format(p_cmd,p_rp1,p_rp2,p_rp3))
	LD3320_Config3(p_cmd,p_rp1.upper(),p_rp2.upper(),p_rp3.upper())
		
def readConfigFile():
	global VRC_CMD_TimeOut
	global VRC_MV_TimeOut
	global udp_ctlIgnoreVRCfg
	global udp_ctlVRAll
	global VR_Exists
	VRC_VoiceLen=60
	VRC_VoiceCut=60
	VRC_MicSensity=64
	VRC_NoiseThres=34
	VRC_RecogOppo=2
	filename = 'voiceConfig.txt' # txt文件和当前脚本在同一目录下，所以不用写具体路径
	with open(filename, 'r') as file_to_read:
		while True:
			lines = file_to_read.readline() # 整行读取数据
			if not lines:
				break
			p_flag,p_id,p_memo,p_val = [str(i) for i in lines.split()] # 将整行数据分割处理，如果分割符是空格，括号里就不用传入参数，如果是逗号， 则传入‘，'字符。
			Ser2Udp('p_flag={},p_id={},p_memo={},p_val={}'.format(p_flag,p_id,p_memo,p_val))
			if(p_flag=="###"):
				if( p_id=='1' ):
					VRC_CMD_TimeOut = float(p_val)
				elif( p_id=='2' ):
					VRC_MV_TimeOut = float(p_val)
				elif( p_id=='3' ):
					VRC_VoiceLen = int(p_val)					
				elif( p_id=='4' ):
					VRC_VoiceCut = int(p_val)
				elif( p_id=='5' ):
					VRC_MicSensity = int(p_val)
				elif( p_id=='6' ):
					VRC_NoiseThres = int(p_val)
				elif( p_id=='7' ):
					VRC_RecogOppo = int(p_val)
				elif( p_id=='8' ):
					udp_ctlVRAll = int(p_val)==1
				elif( p_id=='9' ):
					udp_ctlIgnoreVRCfg = int(p_val)==1
	try:				
		LD3320_Config3_smp(0,VRC_MicSensity)
		LD3320_Config3_smp(1,VRC_NoiseThres)
		LD3320_Config3_smp(2,VRC_VoiceLen)
		LD3320_Config3_smp(3,VRC_VoiceCut)
		LD3320_Config3_smp(5,VRC_RecogOppo)
	except   Exception as e:
		Ser2Udp(str(e))
		VR_Exists = False
		pass

def JSScriptProcess(com,infra,dist):		
	#ct = {'Type':'ScriptInParam','COM':com,'INFRA':infra,'DIST':dist,'WC':wc,'RC':rc}
	str_ct = '{"Type":"ScriptInParam","COM":%d,"INFRA":%d,"DIST":%d}'%(com,infra,dist)
	udpSock.sendto(str_ct.encode('gbk'),('127.0.0.1',5378))
	if( com>=128 and com<138 ):
		udpSock.sendto(str_ct.encode('gbk'),('127.0.0.1',5378))
		udpSock.sendto(str_ct.encode('gbk'),('127.0.0.1',5378))
'''	
	print ct
	try:
		ct = json.dumps(ct)
	except Exception(e):
		print(e)
	finally:	
		print 'try again...'	
		ct = {'Type':'ScriptInParam','COM':com,'INFRA':infra,'DIST':dist}
		try:
			ct = json.dumps(ct)
		except Exception(e):
			print(e)
		finally:	
			ct = "error"
			print ct
			udpSock.sendto(ct.encode('gbk'),('127.0.0.1',5378))
'''
def JSVehicleDirProc(dc,dir):
	print dc
	if( dc>0 ):
		dly = int(dir/10)
		if( dly>=10 ):
			dly = 0
		if( dir<100 ):	
			if( (dir%10)==0 ):
				Motor_Forward()
			elif( (dir%10)==1 ):
				Motor_Backward()
			elif( (dir%10)==2 ):
				Motor_TurnLeft()
			elif( (dir%10)==3 ):
				Motor_TurnRight()
			elif( (dir%10)==4 ):
				Motor_Stop()
			if( (dly>0) and ((dir%10)>=0) and ((dir%10)<=3) ):
				print('delay %dms'%(dly*20))
				time.sleep(dly*0.02)
				Motor_Stop()
				print('stoped')
		elif( (dir>=100) and (dir<200) ):	
			ENA_Speed(dir-100)
		elif( (dir>=200) and (dir<300) ):		
			ENB_Speed(dir-200)
		elif( dir==0x0F130100 ):	
			Cruising_Flag = 1#进入红外跟随模式
			Ser2Udp('Cruising_Flag红外跟随模式 %d '%Cruising_Flag)
		elif( dir==0x0F130200 ):	
			Cruising_Flag = 2
			Ser2Udp('Cruising_Flag红外巡线模式 %d '%Cruising_Flag)
		elif( dir==0x0F130300 ):	
			Cruising_Flag = 3
			Ser2Udp('Cruising_Flag红外避障模式 %d '%Cruising_Flag)
		elif( dir==0x0F130400 ):	
			Cruising_Flag = 4
			Ser2Udp('Cruising_Flag超声波壁障 %d '%Cruising_Flag)
		elif( dir==0x0F130500 ):	
			Cruising_Flag = 5
			Ser2Udp('Cruising_Flag超声波距离PC显示 %d '%Cruising_Flag)
		elif( dir==0x0F130000 ):	
			RevStatus=0
			Cruising_Flag = 0
			Ser2Udp('Cruising_Flag正常模式 %d '%Cruising_Flag)

def JSServoProc(id,angle):	
	global last_spkTime
	if( id<1 ):
		return
	if( id>8 ):
		return
	#while(time.time()-last_spkTime<1.0):
	#	time.sleep(0.01)
	str_ct = '{"Type":"SvoCmdReply","ID":%d,"Angle":%d}'%(id,angle)
#	GPIO.output(LED0,False)
#	GPIO.output(LED1,True)
	GPIO.output(LED2,False)
	time.sleep(0.01)
#	GPIO.output(LED0,True)
#	GPIO.output(LED1,True)
	GPIO.output(LED2,True)
	if angle > 160:
		angle=160
	elif angle < 15:
		angle=15
	tm = XRservo.XiaoRGEEK_SetServo(id,angle)
	udpSock.sendto(str_ct.encode('gbk'),('127.0.0.1',5378))
	Ser2Udp('设置%d号舵机角度为%d,费时=%f秒'%(id,angle,tm))
	
		
#######################################
#########管脚类型设置及初始化##########
#######################################
GPIO.setwarnings(False)

#########led初始化为000##########
GPIO.setup(LED0,GPIO.OUT,initial=GPIO.HIGH)
GPIO.setup(LED1,GPIO.OUT,initial=GPIO.HIGH)
GPIO.setup(LED2,GPIO.OUT,initial=GPIO.HIGH)

#########电机初始化为LOW##########
GPIO.setup(ENA,GPIO.OUT,initial=GPIO.LOW)
ENA_pwm=GPIO.PWM(ENA,1000) 
ENA_pwm.start(0) 
ENA_pwm.ChangeDutyCycle(100)
GPIO.setup(IN1,GPIO.OUT,initial=GPIO.LOW)
GPIO.setup(IN2,GPIO.OUT,initial=GPIO.LOW)
GPIO.setup(ENB,GPIO.OUT,initial=GPIO.LOW)
ENB_pwm=GPIO.PWM(ENB,1000) 
ENB_pwm.start(0) 
ENB_pwm.ChangeDutyCycle(100)
GPIO.setup(IN3,GPIO.OUT,initial=GPIO.LOW)
GPIO.setup(IN4,GPIO.OUT,initial=GPIO.LOW)



#########红外初始化为输入，并内部拉高#########
GPIO.setup(IR_R,GPIO.IN,pull_up_down=GPIO.PUD_UP)
GPIO.setup(IR_L,GPIO.IN,pull_up_down=GPIO.PUD_UP)
GPIO.setup(IR_M,GPIO.IN,pull_up_down=GPIO.PUD_UP)
GPIO.setup(IRF_R,GPIO.IN,pull_up_down=GPIO.PUD_UP)
GPIO.setup(IRF_L,GPIO.IN,pull_up_down=GPIO.PUD_UP)

#########跳线引脚初始化为输入，并内部拉低#########
GPIO.setup(CFG_INITVR,GPIO.IN,pull_up_down=GPIO.PUD_UP)
GPIO.setup(BACKWD_LIGHT,GPIO.OUT,initial=GPIO.HIGH)


##########超声波模块管脚类型设置#########
GPIO.setup(TRIG,GPIO.OUT,initial=GPIO.LOW)#超声波模块发射端管脚设置trig
GPIO.setup(ECHO,GPIO.IN,pull_up_down=GPIO.PUD_UP)#超声波模块接收端管脚设置echo

##########LD3320软件SPI管脚类型设置#########
##GPIO.setup(SCS,GPIO.OUT,initial=GPIO.HIGH)			#芯片片选信号,低有效
##GPIO.setup(SDCK,GPIO.OUT,initial=GPIO.HIGH)			#SPI 时钟信号,下降沿有效
##GPIO.setup(SDO,GPIO.IN,pull_up_down=GPIO.PUD_UP)	#SPI 数据输入
##GPIO.setup(SDI,GPIO.OUT,initial=GPIO.LOW)			#SPI 数据输出
##GPIO.setup(SPIS,GPIO.OUT,initial=GPIO.HIGH)			#SPI 模式设置，低有效
##GPIO.setup(RSTB,GPIO.OUT,initial=GPIO.HIGH)			#LD3320复位信号，低有效
##GPIO.setup(CSB,GPIO.OUT,initial=GPIO.HIGH)			#LD3320片选使能信号，高有效
##GPIO.setup(IRQ,GPIO.IN,pull_up_down=GPIO.PUD_UP)	#LD3320中断信号，低有效

Ser2Udp('init serial...')
call("sh start_mjpg_streamer.sh &",shell=True)
ser = serial.Serial("/dev/ttyS0",9600);
GPIO.output(LED1,True)#流水灯LED1,in dark recieve VR return
#检查语音配置是否未改
time.sleep(0.2);
if( ser.isOpen() ):
	Ser2Udp("serial opened!")
	Ser2Udp(ser.portstr)
else:
	Ser2Udp("try open serial...")
	ser.open();
	if( ser.isOpen() ):
		Ser2Udp("serial opened!")

ip_port = ('', 20001)
Ser2Udp('trying...')
udpSock=socket(AF_INET,SOCK_DGRAM)
while True:
	try:
		Ser2Udp('bind udp...')
		udpSock.bind(ip_port)
		break
	except Exception as e:
		Ser2Udp(str(e))
		XF_Speak(u'日志端口绑定重试');
		reboot_Ctrl=1726435
		ser.close()
		#tcpSerSock.close()
		udpSock.close()
		time.sleep(5.0)
		#call('sh restart_wb.sh &',shell=True)
		sys.exit()
		break
TryUdpDebug('','')

pygame.mixer.init()
	
#XRservo = SMBus(1)
XRservo = XR_Servo()
Ser2Udp('....WIFIROBOTS START!!!...')


init_light()
SENSOR_VAL=0
COM_VAL=-1

#定义TCP服务器相关变量
HOST=''
PORT=2001
BUFSIZ=1
ADDR=(HOST,PORT)

rec_flag=0
i=0
buffer=[]
	
Ser2Udp('读取配置...');
readConfigFile()
XF_Speak(u"脚本日期%s"%SCRIPT_VER);
Ser2Udp('LD3320处理...')
#ser.flushInput();
#标识未有串口写操作，没有写操作则认为上述指令仍旧生效，否则不再响应对应动作
ser_changed = 0;
if( LD3320_Config("{r000}",'FF','EE',1.0) ):
	XF_Speak(u"语音配置已更改")
	if( GPIO.input(CFG_INITVR)==False ):		
		Ser2Udp('LD3320重新初始化...')
		Init_LD3320()
		if( not udp_ctlVRAll ):
			LD3320_Config3("{g600}",'E6','F0','F0')
			LD3320_Config3("{g704}",'E7','F0','F4')
	else:
		ser_changed = 1
		XF_Speak(u"配置跳线禁止恢复语音模块");
else:
	if( not udp_ctlVRAll ):
		LD3320_Config3("{g600}",'E6','F0','F0')
		LD3320_Config3("{g704}",'E7','F0','F4')

call("sh stop_mjpg_streamer.sh &",shell=True)
app_linked = 0
XF_Speak(u"[m55]开始了")
Ser2Udp("开始了...")

#启动TCP服务器，监听2001端口
Ser2Udp('start tcp server...')
tcpSerSock=socket(AF_INET,SOCK_STREAM)
tcpSerSock.setsockopt(SOL_SOCKET,SO_REUSEADDR,1)
while True:
	try:
		Ser2Udp('bind tcp...')
		tcpSerSock.bind(ADDR)
		break
	except Exception as e:
		Ser2Udp(str(e))
		time.sleep(2.0)
		XF_Speak(u'服务端口绑定重试');
		reboot_Ctrl=1726435
		ser.close()
		tcpSerSock.close()
		udpSock.close()
		#call('sh restart_wb.sh &',shell=True)
		sys.exit()
		pass
tcpSerSock.listen(1)



threads = []
t1 = threading.Thread(target=Cruising_Mod,args=(u'模式切换',))
threads.append(t1)
t2 = threading.Thread(target=Path_Dect_img_processing,args=(u'图像处理',))
threads.append(t2)

for t in threads:
		t.setDaemon(True)
		t.start()
		Ser2Udp('theads start...')
Ser2Udp('all theads start...')

tcp_listen_lsttime=time.time()

script_run_time = time.time()
old_SENSOR_VAL = SENSOR_VAL

udpSock.sendto('{"Type":"OpenCamera"}',('127.0.0.1',5378))

#cap = cv2.VideoCapture(0)        
#指定编码方式
#fourcc = cv2.VideoWriter_fourcc(*'MJPG')
#设置保存的文件名，图像的格式
#out1 = cv2.VideoWriter('/home/pi/output3.avi',fourcc, 20.0, (320,240))
img_id=0

LED0Ctrl = 0
while reboot_Ctrl!=1726435:
	app_linked = 0
	GPIO.output(LED0,LED0Ctrl==0)
	LED0Ctrl = 1-LED0Ctrl
	#Ser2Udp('waitting for connection...')
	tcpSerSock.settimeout(0.02);#!!!不可改大，会影响小车内部脚本执行器！！
	try:
		tcpCliSock,addr=tcpSerSock.accept()
	except Exception as e:	
		#Ser2Udp(str(e))
		if( str(e)=="timed out" ):
			try:
				sensor_now = 0
				if( (GPIO.input(IR_L)==False) ):
					sensor_now |= 1
				if(GPIO.input(IR_R)==False):
					sensor_now |= 2
				if(GPIO.input(IRF_L)==False):
					sensor_now |= 4
				if(GPIO.input(IR_M)==False):
					sensor_now |= 8
				if(GPIO.input(IRF_R)==False):
					sensor_now |= 16
				#如有更新，上报至上位机	
				if( sensor_now==SENSOR_VAL ):
					sensor_now = 0
				else:
					SENSOR_VAL = sensor_now
				#Ser2Udp("accept timeout!")
				if( time.time()-tcp_listen_lsttime>5.0 ):
					tcp_listen_lsttime = time.time()
					#TryUdpDebug()
					if( udp_Debug==0 ):
						udpSock.sendto('UDP_DEBUG',debuger_addr)
					if( os.path.exists("wifirobots_new.py") ):
						os.system("cp wifirobots_new.py wifirobots.py")
						XF_Speak(u"发现更新文件.")
						XF_Speak(u"脚本即将重启，请稍候.")
						ser.close()
						tcpSerSock.close()
						udpSock.close()
						reboot_Ctrl=1726435
						sys.exit()
				COM_VAL = -1;		
				if( ser.inWaiting()>0 ):
					VR_Exists = True
					recv = ser.read(1)
					if ( ser.inWaiting>10 ):
						wd_time = time.time()
						ser.flushInput()
					recv = serProcess(recv);
					COM_VAL = recv;
					if( COM_VAL==205 ):
						spk_waitTime = 0
					#Ser2Udp("COM数据类型:"+type(COM_VAL).__name__);
					showVRFlag()
					if( ser_changed==0 ):
						processVRFlag()
					showVRFlag()
				else:	
					if( (wd_time>0) and (time.time()-wd_time>30.0) ):
						XF_Speak(u"[s10]语音出问题了，重启下.",2.0)
						pygame.mixer.music.load('./mp3/TTS_ser_failed.mp3')
						pygame.mixer.music.set_volume(1.0)
						pygame.mixer.music.play()
						time.sleep(5)
						pygame.mixer.music.stop()
						wd_time = -1#time.time()

					processVRTimeOut()
					dbgFlg = 0
					try:
						data,addr=udpSock.recvfrom(1024)
						Ser2Udp("UDP端口收到:"+data);	
						dbgFlg = 1	
						if( (len(data)==10) and (data[0:3]=='vr_') ):#vr_00000xx,xx为十进制
							dbgFlg = 2
							Ser2Udp("收到内部声控模拟命令..."+data[8:])
							rcv = string.atoi(data[8:])
							simProcess(chr(rcv))
							serProcess(chr(rcv))
							showVRFlag()
							if( ser_changed==0 ):
								processVRFlag()
							showVRFlag()
							dbgFlg = 4
						else:						
							if( (len(data)==10) and (data[0:3]=='VR_') ):#VR_0000xxx，xxx为十进制
								dbgFlg = 2
								try:
									COM_VAL = int(str(binascii.b2a_hex(chr(string.atoi(data[7:])))),16)|128
								except:
									COM_VAL = -1
								extSerProcess(data)
								dbgFlg = 8
							else:	
								dbgFlg = 3
								if((udp_Debug==0) and (len(data)==10)):
									TryUdpDebug(data,addr)
								##print data
								jobj = json.loads(data,'utf-8')
								##print jobj
								if( 'VehicleMove' in jobj ):
									if( ('Valid' in jobj['VehicleMove']) and ('Value' in jobj['VehicleMove']) and (jobj['VehicleMove']['Valid']>0) ):
										JSVehicleDirProc(jobj['VehicleMove']['Valid'],jobj['VehicleMove']['Value'])
										
								if( 'Servo' in jobj ):
									if( ('Valid' in jobj['Servo']) and ('ID' in jobj['Servo']) and ('Angle' in jobj['Servo']) and (jobj['Servo']['Valid']>0) ):
										JSServoProc(jobj['Servo']['ID'],jobj['Servo']['Angle'])
								dbgFlg = 5
								if( 'VR_CFG' in jobj ):
									p_tmp = jobj['VR_CFG']
									speakWait = -1.0
									if( 'SPK_WAIT' in jobj ):
										speakWait = jobj['SPK_WAIT']
									Ser2Udp(data)
									dbgFlg = 7
									#time.sleep(0.5);
									if( p_tmp[0]=='{' ):
										if( ser_changed==0 ):
											ser_changed = 1
											LD3320_Config3("{g600}",'E6','F0','F0')
											LD3320_Config3("{g731}",'E7','F3','F1')
											XF_Speak(u'退出内置声控流程,交给用户控制')
											#COM_VAL = 205
										ser.write(p_tmp.encode('utf-8'))	
										#LD3320_Config(p_tmp.encode('utf-8'),'88','00')
										
									else:
										XF_Speak_inner(u'%s'%p_tmp,speakWait)
										#COM_VAL = 205
									dbgFlg = 9	
								
									
					except Exception as e:
						if( str(e)!="timed out" ):
							Ser2Udp("UDP端口收到:"+data);
							Ser2Udp("dbgFlag:%d"%dbgFlg);
							Ser2Udp(str(e))
						pass
					if( mp3StartTime>0.0 ):
						if( time.time()-mp3StartTime>mp3AliveTime ):
							pygame.mixer.music.fadeout(1000)
							mp3StartTime = 0.0
				if( COM_VAL<0 and spk_waitTime>0 and time.time()-last_spkTime>spk_waitTime/1000.0 ):
					COM_VAL = 205
					spk_waitTime = 0
				if( COM_VAL>=0 or SENSOR_VAL!=old_SENSOR_VAL or RADAR_DIST>0 ):  ##or old_WC!=WC or old_RC!=RC ):
					JSScriptProcess(COM_VAL,SENSOR_VAL,RADAR_DIST)
					old_SENSOR_VAL = SENSOR_VAL
					RADAR_DIST = -1
					script_run_time = time.time();
				elif( time.time()-script_run_time>0.5 ):			
					JSScriptProcess(COM_VAL,SENSOR_VAL,RADAR_DIST)			
					script_run_time = time.time();
			except  Exception as e:
				Ser2Udp(str(e))
				pass
			circle_run()
		continue
	#out1.release()   
	Ser2Udp('...connected from:{}'.format(addr))
	udpSock.sendto('{"Type":"CloseCamera"}',('127.0.0.1',5378))
	#if( cap.isOpened() ):
	#	cap.release();
	if( VR_Exists ):
		XF_Speak(u'App连接成功!')
	else:	
		time.sleep(3)
	call("sh start_mjpg_streamer.sh &",shell=True)
	#time.sleep(2)
	if( udp_Debug==0 ):
		debuger_addr=(addr[0],2222)
		TryUdpDebug('','')
	tcpCliSock.settimeout(0.02);
	tcpCliSock.send('$9,'+SCRIPT_VER+'%')
	watchDogTime = time.time();
	LED0Ctrl = 0
	app_linked = 1
	while reboot_Ctrl!=1726435:
		GPIO.output(LED0,LED0Ctrl==0)
		LED0Ctrl = 1-LED0Ctrl
		#Ser2Udp("~1");
		if( time.time()-watchDogTime>30.0 ):
			XF_Speak(u'App超时,断开');
			break;
		try:
			data_bin=tcpCliSock.recv(BUFSIZ)
			data=binascii.b2a_hex(data_bin)
		except  Exception as e:
			#Ser2Udp("Error receiving:%s" %e)
			if( str(e)=="timed out" ):#控制流程空闲时
				#更新传感器状态
				sensor_now = 0
				if( (GPIO.input(IR_L)==False) ):
					sensor_now |= 1
				if(GPIO.input(IR_R)==False):
					sensor_now |= 2
				if(GPIO.input(IRF_L)==False):
					sensor_now |= 4
				if(GPIO.input(IR_M)==False):
					sensor_now |= 8
				if(GPIO.input(IRF_R)==False):
					sensor_now |= 16
				#如有更新，上报至上位机	
				if( sensor_now==SENSOR_VAL ):
					sensor_now = 0
				else:
					SENSOR_VAL = sensor_now
					tcpCliSock.send("$1,"+str(SENSOR_VAL)+"%")
				#Ser2Udp("~A");
				#串口处理	
				if( ser.inWaiting()>0 ):
					VR_Exists = True
					recv = ser.read(1)
					if ( ser.inWaiting>10 ):
						wd_time = time.time()
						ser.flushInput()
					recv = serProcess(recv);
					showVRFlag()
					#Ser2Udp("~m");
					if( ser_changed==0 ):
						processVRFlag()
					else:
						tcpCliSock.send("$2,"+str(recv)+"%")
					showVRFlag()
					#Ser2Udp("~B");
				else:
					if( (wd_time>0) and (time.time()-wd_time>15.0) ):
						XF_Speak(u"[s10]语音出问题了，重启下.",2.0)
						pygame.mixer.music.load('./mp3/TTS_ser_failed.mp3')
						pygame.mixer.music.set_volume(1.0)
						pygame.mixer.music.play()
						time.sleep(5)
						pygame.mixer.music.stop()
						wd_time = -1 #time.time()
					processVRTimeOut()
					if( TTS_speakWait>0 ):
						if( time.time()-TTS_speakStart>TTS_speakWait ):
							Ser2Udp('TTS timeout! at {}'.format(time.time()))
							TTS_speakWait = 0
							GPIO.output(LED1,True)#流水灯LED1,in dark recieve VR return
							tcpCliSock.send("$2,205%")
					try:
						data,addr=udpSock.recvfrom(10,MSG_WAITALL)
						Ser2Udp("UDP端口收到:"+data);
						if( (len(data)==10) and (data[0:3]=='VR_') ):#VR_0000xxx，xxx为十进制
							extSerProcess(data)
						elif( (len(data)==10) and (data[0:3]=='vr_') ):#vr_00000xx,xx为十进制
							Ser2Udp("收到内部声控模拟命令...")
							simProcess(chr(string.atoi(data[8:])))
							recv = serProcess(chr(string.atoi(data[8:])))
							showVRFlag()
							if( ser_changed==0 ):
								processVRFlag()
							else:	
								tcpCliSock.send("$2,"+str(recv)+"%")
							showVRFlag()
						if( mp3StartTime>0.0 ):
							if( time.time()-mp3StartTime>mp3AliveTime ):
								pygame.mixer.music.fadeout(1000)
								mp3StartTime = 0.0
					except Exception as e:
						#print(e)
						pass
					#Ser2Udp("~C");
				circle_run()
				continue
			else:
				#XF_Speak(u'小车控制连接出现错误！');
				XF_Speak(u'App连接错误:'+str(e)+',断开');
			break
               
		#Ser2Udp("~2.."+data);
		if not data:
			#continue;
			XF_Speak(u'App主动断开.');
			break
		#added by mhq, process ipv4 to serial channel
		if IPV4toSERIAL_sw!=0:
			if( (IPV4toSERIAL_sw==1) and (not udp_ctlIgnoreVRCfg) and (ser_changed==0) ):
				ser_changed = 1
				LD3320_Config3("{g600}",'E6','F0','F0')
				LD3320_Config3("{g731}",'E7','F3','F1')
				XF_Speak(u'退出内置声控流程,交给用户控制')
			if data=='aa':
				IPV4toSERIAL_exitFlag = IPV4toSERIAL_exitFlag+1
			else:
				IPV4toSERIAL_exitFlag = 0
			if IPV4toSERIAL_exitFlag==3:
				IPV4toSERIAL_exitFlag = 0
				IPV4toSERIAL_sw = 0
				Ser2Udp('IPV4toSERIAL_sw = 0')
			else:
				ser.write(data_bin)
			continue

		#Ser2Udp("~3");
		if rec_flag==0:
			#Ser2Udp("~a");
			if data=='ff':  
				buffer[:]=[]
				rec_flag=1
				i=0
		else:
			#Ser2Udp("~b..%d"%i);
			if data=='ff':
				rec_flag=0
				if i==3:
					Ser2Udp('Got data %s'%str(buffer)[1:len(str(buffer)) - 1])
					Communication_Decode();
					watchDogTime = time.time();
				else:
					rec_flag=1   #changed by mhq, when pakage error happend ,the second ff act as the first. 
				i=0
			else:
				buffer.append(data)
				i+=1

		#Ser2Udp("~4");
   
        #Ser2Udp(binascii.b2a_hex(data))
	app_linked = 0	
	tcpCliSock.close()
	call("sh stop_mjpg_streamer.sh &",shell=True)
	if( VR_Exists ):
		XF_Speak(u'等候再次连接.')
	else:	
		time.sleep(3)
	udpSock.sendto('{"Type":"QuitApp"}',('127.0.0.1',5378))
	udpSock.sendto('{"Type":"OpenCamera"}',('127.0.0.1',5378))
	#cap = cv2.VideoCapture(0)
	#指定编码方式
	#fourcc = cv2.VideoWriter_fourcc(*'MJPG')
	#设置保存的文件名，图像的格式
	#out1 = cv2.VideoWriter('/home/pi/output4.avi',fourcc, 20.0, (320,240))
Motor_Stop()
tcpSerSock.shutdown(SHUT_RDWR)
tcpSerSock.close()
XF_Speak(u'退出执行');
#udpSock.shutdown(SHUT_RDWR)
udpSock.close()
sys.exit()
    

