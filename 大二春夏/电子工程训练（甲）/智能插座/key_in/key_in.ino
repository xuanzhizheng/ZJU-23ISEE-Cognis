//*****   ESP32-C3 *****//
// 编号  名称  复位后默认功能              复用功能        电源域      上下拉能力
// 17   GND   接地
// 18   5V    5V电源接口，与USB的VBUS相连
// 19   BOOT  GPIO09,输入                BOOTMODE        VDD3P3_CPU   UP/DOWN
// 20   IO08  GPIO08,输入，输出，高阻                     VDD3P3_CPU    UP/DOWN
// 21   IO04  GPIO04,输入，输出，高阻     I2C_SDA/ADC_4   VDD3P3_RTC    UP/DOWN
// 22   IO05  GPIO05,输入，输出，高阻     I2C_SCL/ADC_5   VDD3P3_RTC    UP/DOWN
// 23   3.3V  芯片电源，3.3V   
// 24   GND   接地
// 25   PB_11 GPIO11,输入，输出，高阻     VDD_SPI         VDD3P3_CPU    UP/DOWN
// 26   IO07  GPIO07,输入，输出，高阻     SPI2_CS         VDD3P3_CPU    UP/DOWN
// 27   IO06  GPIO06,输入，输出，高阻                     VDD3P3_CPU    UP/DOWN
// 28   IO10  GPIO10,输入，输出，高阻     SPI2_MISO       VDD3P3_CPU    UP/DOWN
// 29   IO03  GPIO03,输入，输出，高阻     SPI2_MOSI/ADC_3 VDD3P3_RTC    UP/DOWN
// 30   IO02  GPIO02,输入，输出，高阻     SPI2_CK/ADC_2   VDD3P3_CPU    UP/DOWN
// 31   3.3V  芯片电源，3.3V 
// 32   GND   接地
// 16   5V    5V电源接口，与USB的VBUS相连
// 15   PWB   芯片3.3V供电控制,高电平有效，不用可悬空
// 14   GND   接地
// 13   3.3V  芯片电源，3.3V
// 12   RESET 芯片复位                                    VDD3P3_RTC
// 11   NC    
// 10   IO13  GPIO13,输入，输出，高阻                     VDD3P3_CPU    UP/DOWN
// 09   U0_RX GPIO20,输入，输出，高阻     UART0_RX        VDD3P3_CPU    UP/DOWN
// 08   U0_TX GPIO21,输入，输出，高阻     UART0_TX        VDD3P3_CPU    UP/DOWN
// 07   GND   接地
// 06   IO19  GPIO19,输入，输出，高阻     USB_D+          VDD3P3_CPU    UP/DOWN
// 05   IO18  GPIO18,输入，输出，高阻     USB_D-          VDD3P3_CPU    UP/DOWN
// 04   IO12  GPIO12,输入，输出，高阻     SPIHD           VDD3P3_CPU    UP/DOWN
// 03   IO01  GPIO1,输入，输出，高阻      UART1_RX/ADC_1  VDD3P3_CPU    UP/DOWN
// 02   IO00  GPIO0,输入，输出，高阻      UART1_TX/ADC_0  VDD3P3_CPU    UP/DOWN
// 01   GND   接地

//LED编号   对应GPIO    管脚功能    描述
//D3*       IO13       GPIO13配置  高电平有效

#include <Arduino.h>
//#include "WiFi.h"
//#include "AsyncUDP.h"
//#include "esp_adc_cal.h"

#define DEBOUNCE_DELAY 50    // 消抖时间阈值（单位：ms）

unsigned long lastDebounceTime = 0;  // 最后一次状态变化时间
int lastStableState = HIGH;         // 稳定后的按键状态
bool keyPressed = false;            // 标记有效按压状态

//***** 消抖函数封装 *****//
bool debounceButton(int currentState) {
  bool actionDetected = false;
  
  // 状态变化时重置计时
  if (currentState != lastStableState) {
    lastDebounceTime = millis();
  }

  // 稳定状态判断
  if ((millis() - lastDebounceTime) > DEBOUNCE_DELAY) {
    // 更新稳定状态
    if (currentState != lastStableState) {
      lastStableState = currentState;
      
      // 检测有效动作
      if (lastStableState == LOW) {   // 按下动作
        keyPressed = true;
      } else if (keyPressed) {        // 释放动作且之前有有效按下
        actionDetected = true;
        keyPressed = false;
      }
    }
  }
  return actionDetected;
}

// constants won't change. Used here to set a pin number :
const int relayPinA = 13;     // the pin number of the relay pin
const int relayPinB = 12;      // the pin number of the relay pin
const int pinLED = 7;       //the pin number of the led pin

const int keyPin11 = 8;  //the pin number of the key pin

int acc;
bool keyin, lastkey;

void setup()
{
  // set the digital pin as output:
  pinMode( relayPinA, OUTPUT );
  pinMode( relayPinB, OUTPUT );
  pinMode( pinLED, OUTPUT );
  pinMode(keyPin11, INPUT);

  // start serial port at 9600 bps:
  Serial.begin(115200);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for Leonardo only
  }
  Serial.println("UART ready...");
  Serial.println("Input command:\n '0' to reset the keystrokes of s1;\n 'r' to read the keystrokes of s1;\n 'k' to read the stats of s1");

  digitalWrite(pinLED, HIGH);
  digitalWrite(relayPinA, LOW);
  digitalWrite(relayPinB, LOW);
  
  acc = 0;
  keyin = HIGH;
  lastkey = keyin;
}

void loop()
{
  // get s1 input
  keyin = digitalRead(keyPin11);
  if(keyin != lastkey)
  {
    acc++;
    lastkey = keyin;
  }
  
  //digitalWrite(pinLED, keyin);
  
  if (Serial.available() > 0)
  {
    // get incoming byte:
    char inChar = (char)Serial.read();
    switch (inChar)
    {
      case '0':
        acc = 0;
        Serial.print("Keystrokes: ");
        Serial.println(acc);
        digitalWrite(pinLED, LOW);
        delay(500);
        digitalWrite(pinLED, HIGH);
        break;
      case 'r':
        Serial.print("Keystrokes: ");
        Serial.println(acc);
        break;
      case 'k':
        Serial.print("Key input: ");
        Serial.println((int)keyin);
        break;
      default:
        break;
    }
  }
}
