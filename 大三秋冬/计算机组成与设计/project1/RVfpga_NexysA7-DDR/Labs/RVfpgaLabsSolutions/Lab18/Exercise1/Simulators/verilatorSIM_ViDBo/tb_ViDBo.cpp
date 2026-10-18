// SPDX-License-Identifier: Apache-2.0
// Copyright 2021 Olof Kindgren
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <stdint.h>
#include <signal.h>

#include "vidbo.h"

#include "Vrvfpgasim.h"

using namespace std;

static bool done;

vluint64_t main_time = 0;

double sc_time_stamp () {
  return main_time;
}

void INThandler(int signal) {
  printf("\nCaught ctrl-c\n");
  done = true;
}


int Decode(int Digit) {

  int Digit_Ascii;

  if (Digit == 0x01) Digit_Ascii = 48;  // 0
  else if (Digit == 0x4f) Digit_Ascii = 49;  // 1
  else if (Digit == 0x12) Digit_Ascii = 50;  // 2
  else if (Digit == 0x06) Digit_Ascii = 51;  // 3
  else if (Digit == 0x4c) Digit_Ascii = 52;  // 4
  else if (Digit == 0x24) Digit_Ascii = 53;  // 5
  else if (Digit == 0x20) Digit_Ascii = 54;  // 6
  else if (Digit == 0x0f) Digit_Ascii = 55;  // 7
  else if (Digit == 0x00) Digit_Ascii = 56;  // 8
  else if (Digit == 0x0c) Digit_Ascii = 57;  // 9
  else if (Digit == 0x08) Digit_Ascii = 65;  // A
  else if (Digit == 0x60) Digit_Ascii = 66;  // B
  else if (Digit == 0x72) Digit_Ascii = 67;  // C
  else if (Digit == 0x42) Digit_Ascii = 68;  // D
  else if (Digit == 0x30) Digit_Ascii = 69;  // E
  else if (Digit == 0x38) Digit_Ascii = 70;  // F
  else if (Digit == 0x21) Digit_Ascii = 71;  // G
  else if (Digit == 0x48) Digit_Ascii = 72;  // H
  else if (Digit == 0x43) Digit_Ascii = 74;  // J
  else if (Digit == 0x71) Digit_Ascii = 76;  // L
  else if (Digit == 0x18) Digit_Ascii = 80;  // P
  else if (Digit == 0x41) Digit_Ascii = 85;  // U
  else if (Digit == 0x44) Digit_Ascii = 89;  // Y
  else Digit_Ascii = 32;

  return(Digit_Ascii);

}


int main(int argc, char **argv, char **env) {
  vidbo_context_t vidbo_context;

  const char * const inputs[] = {
    "gpio.SW0",
    "gpio.SW1",
    "gpio.SW2",
    "gpio.SW3",
    "gpio.SW4",
    "gpio.SW5",
    "gpio.SW6",
    "gpio.SW7",
    "gpio.SW8",
    "gpio.SW9",
    "gpio.SW10",
    "gpio.SW11",
    "gpio.SW12",
    "gpio.SW13",
    "gpio.SW14",
    "gpio.SW15",
    "gpio.SW16",
    "gpio.SW17",
    "gpio.SW18",
    "gpio.SW19",
    "gpio.SW20",
  };
  int num_inputs = sizeof(inputs) / sizeof(inputs[0]);

  int *input_vals = (int *)calloc(num_inputs, sizeof(int));

  vidbo_init(&vidbo_context, 8081);

  vidbo_register_inputs(&vidbo_context, inputs, num_inputs);
  
  Verilated::commandArgs(argc, argv);

  Vrvfpgasim* top = new Vrvfpgasim;

  signal(SIGINT, INThandler);

  int check_vidbo = 0;

  printf("\nHELLO_TB\n");

  top->clk = 1;
  int last_leds = top->o_led;
  int new_SevSegDispl[8];
  int new_Enables = 0;
  int sidx = 0;
  int SevSegDispl4;
  int Digit, CheckDigit=0, Digit_Ascii, Print7Seg=0;
  char item2[13] = {0};

  int value;
  int CheckTriColour_R=-1, CheckTriColour_G=-1, CheckTriColour_B=-1;
  int Send_R = 0, Send_B = 0, Send_G = 0;
  int cont_R = 0, cont_G = 0, cont_B = 0; 
  int cont_R_lo = 0, cont_G_lo = 0, cont_B_lo = 0; 
  int cont_R_hi = 0, cont_G_hi = 0, cont_B_hi = 0; 
  int finalcont_R_lo = 0, finalcont_G_lo = 0, finalcont_B_lo = 0; 
  int finalcont_R_hi = 0, finalcont_G_hi = 0, finalcont_B_hi = 0; 


  while (!(done || Verilated::gotFinish())) {

    top->eval();

    check_vidbo++;

    char item[5] = {0}; //Space for LD??\0
    if (last_leds != top->o_led) {
        for (int i=0;i<16;i++) {
          snprintf(item, 5, "LD%d", i);
          vidbo_send(&vidbo_context, main_time, "gpio", item, (top->o_led>>i) & 0x1);
        }
        last_leds = top->o_led;
    }

    if (vidbo_recv(&vidbo_context, input_vals)) {
      /* Update the GPIO inputs from the received frame */
      top->i_sw = 0;
      for (int i=0;i<16;i++)
        if (input_vals[i])
          top->i_sw |= (1 << i);

      /* Update the GPIO2 inputs from the received frame */
      top->i_pb = 0;
      for (int i=0;i<5;i++)
        if (input_vals[i+16])
          top->i_pb |= (1 << i);
    }

    if (top->tf_push && top->clk==1) {
      vidbo_send(&vidbo_context, main_time, "serial", "uart", top->wb_m2s_uart_dat_output);
    }


    if (main_time % 10000 == 0) CheckDigit = 8;
    if ((CheckDigit > 0) && (top->clk == 0)) {
          CheckDigit = CheckDigit-1;

          if (CheckDigit == 7){
            new_Enables = 0;
          }

          if (CheckDigit == 0){
            Print7Seg = 1;
          }

          Digit = (top->CA<<6)+(top->CB<<5)+(top->CC<<4)+(top->CD<<3)+(top->CE<<2)+(top->CF<<1)+(top->CG);

          Digit_Ascii = Decode(Digit);

          if (top->AN == 0xFE){
            new_SevSegDispl[0] = Digit_Ascii;
            new_Enables = new_Enables + (1);
          }
          if (top->AN == 0xFD){
            new_SevSegDispl[1] = Digit_Ascii;
            new_Enables = new_Enables + (2);
          } 
          if (top->AN == 0xFB){
            new_SevSegDispl[2] = Digit_Ascii;
            new_Enables = new_Enables + (4);
          } 
          if (top->AN == 0xF7){
            new_SevSegDispl[3] = Digit_Ascii;
            new_Enables = new_Enables + (8);
          } 
          if (top->AN == 0xEF){
            new_SevSegDispl[4] = Digit_Ascii;
            new_Enables = new_Enables + (16);
          } 
          if (top->AN == 0xDF){
            new_SevSegDispl[5] = Digit_Ascii;
            new_Enables = new_Enables + (32);
          } 
          if (top->AN == 0xBF){
            new_SevSegDispl[6] = Digit_Ascii;
            new_Enables = new_Enables + (64);
          } 
          if (top->AN == 0x7F){
            new_SevSegDispl[7] = Digit_Ascii;
            new_Enables = new_Enables + (128);
          }
    }
    if (Print7Seg==1) {
        for (int i=0;i<8;i++) {
          if ((((new_Enables) >> i) & 1) == 0){
              SevSegDispl4 = 32;
          } 
          else{
              SevSegDispl4 = new_SevSegDispl[i];
          }
          snprintf(item2, 13, "SevSegDispl%d", i);
          vidbo_send(&vidbo_context, main_time, item2, "digit", SevSegDispl4);
        }
        Print7Seg = 0;
    }




    if ((main_time % 10000 == 0)){
      CheckTriColour_R = 3;
      CheckTriColour_G = 3;
      CheckTriColour_B = 3;
    }


    if ((CheckTriColour_R > -1) && (top->clk == 0)) {

      if((CheckTriColour_R == 3) && (top->LED_R==1)){
        CheckTriColour_R = 2;
      }

      if((CheckTriColour_R == 2) && (top->LED_R==0)){
        CheckTriColour_R = 1;
      }

      if(CheckTriColour_R == 1){
        if((top->LED_R==0)) cont_R_lo++;
        if((top->LED_R==1)) {
          finalcont_R_lo = cont_R_lo;
          cont_R_lo = 0;
          CheckTriColour_R = 0;
        }
      }

      if(CheckTriColour_R == 0){
        if((top->LED_R==1)) cont_R_hi++;
        if((top->LED_R==0)) {
          finalcont_R_hi = cont_R_hi;
          cont_R_hi = 0;
          CheckTriColour_R = -1;
          Send_R = 1;
        }
      }

    }


    if ((CheckTriColour_G > -1) && (top->clk == 0)) {

      if((CheckTriColour_G == 3) && (top->LED_G==1)){
        CheckTriColour_G = 2;
      }

      if((CheckTriColour_G == 2) && (top->LED_G==0)){
        CheckTriColour_G = 1;
      }

      if(CheckTriColour_G == 1){
        if((top->LED_G==0)) cont_G_lo++;
        if((top->LED_G==1)) {
          finalcont_G_lo = cont_G_lo;
          cont_G_lo = 0;
          CheckTriColour_G = 0;
        }
      }

      if(CheckTriColour_G == 0){
        if((top->LED_G==1)) cont_G_hi++;
        if((top->LED_G==0)) {
          finalcont_G_hi = cont_G_hi;
          cont_G_hi = 0;
          CheckTriColour_G = -1;
          Send_G = 1;
        }
      }

    }


    if ((CheckTriColour_B > -1) && (top->clk == 0)) {

      if((CheckTriColour_B == 3) && (top->LED_B==1)){
        CheckTriColour_B = 2;
      }

      if((CheckTriColour_B == 2) && (top->LED_B==0)){
        CheckTriColour_B = 1;
      }

      if(CheckTriColour_B == 1){
        if((top->LED_B==0)) cont_B_lo++;
        if((top->LED_B==1)) {
          finalcont_B_lo = cont_B_lo;
          cont_B_lo = 0;
          CheckTriColour_B = 0;
        }
      }

      if(CheckTriColour_B == 0){
        if((top->LED_B==1)) cont_B_hi++;
        if((top->LED_B==0)) {
          finalcont_B_hi = cont_B_hi;
          cont_B_hi = 0;
          CheckTriColour_B = -1;
          Send_B = 1;
        }
      }

    }


    if((Send_R == 1) && (Send_G == 1) && (Send_B == 1)){
      value = (finalcont_R_hi*100)/(finalcont_R_hi+finalcont_R_lo);
      value = ((value-5)*255/61);
      vidbo_send(&vidbo_context, main_time, "tricolour", "value", value);
      value = (finalcont_G_hi*100)/(finalcont_G_hi+finalcont_G_lo);
      value = ((value-5)*255/61);
      vidbo_send(&vidbo_context, main_time, "tricolourg", "value", value);
      value = (finalcont_B_hi*100)/(finalcont_B_hi+finalcont_B_lo);
      value = ((value-5)*255/61);
      vidbo_send(&vidbo_context, main_time, "tricolourr", "value", value);
      Send_R = 0;
      Send_G = 0;
      Send_B = 0;
    }




    top->clk = !top->clk;
    main_time+=10;

  }


  exit(0);
}
