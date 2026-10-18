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
//D4*       IO12       GPIO12配置  高电平有效
//D5*       IO13       GPIO13配置  高电平有效

#include <Arduino.h>
#include "WiFi.h"
#include "AsyncUDP.h"
#include "esp_adc_cal.h"

#define pinTemp A3      //34 //A3
#define pinVol A2       //35 //A2
#define pinCurrent0 A0  //35 //A0
#define pinCurrent1 A1  //34 //A1

#define ADC_EXAMPLE_CALI_SCHEME     ESP_ADC_CAL_VAL_EFUSE_TP
#define ADC_EXAMPLE_ATTEN           ADC_ATTEN_DB_11

static esp_adc_cal_characteristics_t adc1_chars;
bool cali_enable;

// constants won't change. Used here to set a pin number :
const int relayPinA = 13; //18;     // the pin number of the relay pin
const int relayPinB = 12; //6;      // the pin number of the relay pin
const int pinLED = 7;  //19;       //the pin number of the led pin


unsigned int Sensor0 = 0;    // 6 analog sensors
unsigned int Sensor1 = 0;
unsigned int Sensor2 = 0;
unsigned int Sensor3 = 0;

#define WINDOW_SIZE 8

// 电流通道0
unsigned int samples0[WINDOW_SIZE] = {0};
int index0 = 0;
unsigned long sum0 = 0;

// 电流通道1
unsigned int samples1[WINDOW_SIZE] = {0};
int index1 = 0;
unsigned long sum1 = 0;

unsigned int movingAverageFilter(unsigned int rawValue, unsigned int samples[], int &idx, unsigned long &sum) {
  sum -= samples[idx];      // 移除最旧值
  sum += rawValue;          // 添加最新值
  samples[idx] = rawValue;  // 更新样本数组
  idx = (idx + 1) % WINDOW_SIZE; // 环形索引
  return sum / WINDOW_SIZE; // 返回平均值
}

static bool adc_calibration_init(void)
{
  esp_err_t ret;
  bool cali_enable = false;
 
  ret = esp_adc_cal_check_efuse(ADC_EXAMPLE_CALI_SCHEME);
  if (ret == ESP_ERR_NOT_SUPPORTED) {
    Serial.println( "Calibration scheme not supported, skip software calibration");
  } else if (ret == ESP_ERR_INVALID_VERSION) {
      Serial.println("eFuse not burnt, skip software calibration");
  } else if (ret == ESP_OK) {
      Serial.println("eFuse is used for software calibration");
      cali_enable = true;
      esp_adc_cal_characterize(ADC_UNIT_1, ADC_EXAMPLE_ATTEN, ADC_WIDTH_BIT_12, 0, &adc1_chars);
    } else {
      Serial.println("Invalid arg");
  }
  if( !cali_enable ){
    //Check Vref is burned into eFuse
    if (esp_adc_cal_check_efuse(ESP_ADC_CAL_VAL_EFUSE_VREF) == ESP_OK) {
      printf("eFuse Vref: Supported\n");
      cali_enable = true;
      esp_adc_cal_characterize(ADC_UNIT_1, ADC_EXAMPLE_ATTEN, ADC_WIDTH_BIT_12, 0, &adc1_chars);
    } else {
      printf("eFuse Vref: NOT supported\n");
    }
  }
  return cali_enable;
}

uint32_t analog_Read(uint8_t pin)
{
  uint32_t sum = 0;
  //analogSetAttenuation(ADC_11db);
  for (size_t i = 0; i < 3; i++)
  {
    sum += analogRead(pin);
    delay(1);
  }
  sum /= 3;
  uint32_t voltage = 0;
  //Serial.print("analogRead=");
  //Serial.print(sum,DEC);
  if (cali_enable)
    voltage = esp_adc_cal_raw_to_voltage(sum, &adc1_chars);
  else 
    voltage = sum*2700/4096;
  //Serial.print(",v=");
  //Serial.println(voltage,DEC);
  return voltage;
}

int getCurrent(int ch)
{
  uint32_t val=0;
  if (ch == 0)
    val = analog_Read(pinCurrent0);
  else if (ch == 1)
    val = analog_Read(pinCurrent1);
    
  //Serial.print("Current");
  //Serial.print(ch+1);
  //Serial.print("=");
  //Serial.println(val,DEC);
  
  //return (val*28+87)/174;//实测调整
  return val;
}

int getVoltage()
{
  uint32_t val = analog_Read(pinVol);
  
  //Serial.print("Voltage=");
  //Serial.println(val,DEC);
  
  return val*2;
}

int getTemperature()
{
  uint32_t val = (analog_Read(pinTemp)*16+5)/10;

  // Serial.print("Voltage=");
  // Serial.println(val,DEC);
  
  return val;
}

void setup()
{
  // set the digital pin as output:
  pinMode( relayPinA, OUTPUT );
  pinMode( relayPinB, OUTPUT );
  pinMode( pinLED, OUTPUT );

  analogReadResolution(12);
  adc1_config_width(ADC_WIDTH_BIT_12);
  adc1_config_channel_atten(ADC1_CHANNEL_0, ADC_ATTEN_DB_11);
  adc1_config_channel_atten(ADC1_CHANNEL_1, ADC_ATTEN_DB_11);
  adc1_config_channel_atten(ADC1_CHANNEL_2, ADC_ATTEN_DB_11);
  adc1_config_channel_atten(ADC1_CHANNEL_3, ADC_ATTEN_DB_11);
  adc1_config_channel_atten(ADC1_CHANNEL_4, ADC_ATTEN_DB_11);
  //adc1_config_channel_atten(ADC1_CHANNEL_MAX, ADC_ATTEN_DB_11);
  cali_enable = adc_calibration_init();
  esp_sleep_enable_timer_wakeup(10000000);
  
  // start serial port at 9600 bps:
  Serial.begin(115200);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for Leonardo only
  }
  //digitalWrite(ledPin10,HIGH);
  //  pinMode(2, INPUT);   // digital sensor is on digital pin 2
  //  establishContact();  // send a byte to establish contact until receiver responds

  digitalWrite(pinLED, LOW);
  delay(500);
  digitalWrite(pinLED, HIGH);
  delay(500);
  digitalWrite(pinLED, LOW);
  delay(500);
  digitalWrite(pinLED, HIGH);

  digitalWrite(relayPinA, LOW);
  digitalWrite(relayPinB, LOW);

  Serial.println("UART ready...");
}

void loop()
{
  // read analog inputs:
  Sensor0 = movingAverageFilter(getCurrent(0),samples0,index0,sum0);
  Sensor1 = movingAverageFilter(getCurrent(1),samples1,index1,sum1);
  Sensor2 = getVoltage();
  Sensor3 = getTemperature();

  // send sensor values:
  Serial.print("Socket #1 current: ");
  Serial.print((float)Sensor0*0.174-3.242);
  Serial.print(" mA");
  Serial.print("\t\t");
  Serial.print("Socket #2 current: ");
  Serial.print((float)Sensor1*0.173-2.42);
  Serial.println(" mA");
  Serial.print("Voltage input: ");
  Serial.print((float)Sensor2);
  Serial.println(" mV");
  Serial.print("Temperature: ");
  Serial.print((float)Sensor3/10);
  Serial.println(" x0.1 Deg Cel");
  Serial.println();
  Serial.println();
  delay(500);

  // if we get a valid byte, read analog ins:
  if (Serial.available() > 0) {
    // get incoming byte:
    char inChar = (char)Serial.read();
    Serial.println(inChar);
    switch (inChar)
    {
      case 'a':
        digitalWrite(relayPinA, LOW);
        break;
      case 'A':
        digitalWrite(relayPinA, HIGH);
        break;
      case 'b':
        digitalWrite(relayPinB, LOW);
        break;
      case 'B':
        digitalWrite(relayPinB, HIGH);
        break;
      default:
        break;
    }
  }
}
