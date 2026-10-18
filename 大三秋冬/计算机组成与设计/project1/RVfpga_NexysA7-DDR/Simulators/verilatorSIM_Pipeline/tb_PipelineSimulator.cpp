// SPDX-License-Identifier: Apache-2.0
// Copyright 2022 Daniel Chaver
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

#include <cairo.h>

#include <gtk/gtk.h>
#include <string.h>
#include <stdlib.h>

#include <stdint.h>
#include <signal.h>

#include "Vrvfpgasim.h"

#include "Disassembler.h"

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


int test_var[120];





static const size_t BUFSIZE=128;

void PaintOneCycle (GtkButton *button, GtkLabel *data[])
{
  char buffer[BUFSIZE]; 
  char instruction_dis[BUFSIZE] = { 0 };
  const char *format;
  char *markup;
  int i;
  
  for(i=0;i<3;i++){
    format = "<span font_desc=\"Bold\" foreground=\"blue\">%s</span>";
    memset(instruction_dis,0,strlen(instruction_dis));
    DisassembleOneInstruction(test_var[i], &instruction_dis[0]);
    if (test_var[116+i] == 1) sprintf(buffer, "%s", &instruction_dis[0]);
    else sprintf(buffer, "-----");
      markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[i]), markup);
    g_free (markup);
  }

  if(test_var[34] && !test_var[32] && (test_var[116] == 1)){
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "ra0=%d", test_var[4]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[4]), markup);
    g_free (markup);
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "rd0=%.6d", test_var[6]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[6]), markup);
    g_free (markup);
  }
  else{
    sprintf(buffer, "ra0=%d", test_var[4]);
    gtk_label_set_text(GTK_LABEL(data[4]), buffer);
    sprintf(buffer, "rd0=%.6d", test_var[6]);
    gtk_label_set_text(GTK_LABEL(data[6]), buffer);
  }
  if(test_var[35] && !test_var[33] && (test_var[116] == 1)){
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "ra1=%d", test_var[5]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[5]), markup);
    g_free (markup);
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "rd1=%.6d", test_var[7]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[7]), markup);
    g_free (markup);
  }
  else{
    sprintf(buffer, "ra1=%d", test_var[5]);
    gtk_label_set_text(GTK_LABEL(data[5]), buffer);
    sprintf(buffer, "rd1=%.6d", test_var[7]);
    gtk_label_set_text(GTK_LABEL(data[7]), buffer);
  }

  if(test_var[36] && (test_var[0] != 0x00000013) && (test_var[0] != 0x0001) && (test_var[116] == 1)){
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "ALU0=%.6d", test_var[8]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[8]), markup);
    g_free (markup);
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "ALU1=%.6d", test_var[9]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[9]), markup);
    g_free (markup);
  }
  else{
    sprintf(buffer, "ALU0=%.6d", test_var[8]);
    gtk_label_set_text(GTK_LABEL(data[8]), buffer);
    sprintf(buffer, "ALU1=%.6d", test_var[9]);
    gtk_label_set_text(GTK_LABEL(data[9]), buffer);
  }
  if(test_var[36] && (test_var[0] != 0x00000013) && (test_var[0] != 0x0001) && (test_var[116] == 1) && (test_var[120] == 0)){
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "ALU-Res=%.6d", test_var[10]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[10]), markup);
    g_free (markup);
  }
  else{
    sprintf(buffer, "ALU-Res=%.6d", test_var[10]);
    gtk_label_set_text(GTK_LABEL(data[10]), buffer);
  }
  if(test_var[36] && (test_var[0] != 0x00000013) && (test_var[0] != 0x0001) && (test_var[116] == 1) && (test_var[120] == 1)){
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "Taken?=%d", test_var[119]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[52]), markup);
    g_free (markup);
  }
  else{
    sprintf(buffer, "Taken?=%d", test_var[119]);
    gtk_label_set_text(GTK_LABEL(data[52]), buffer);
  }

  if(test_var[40] && (test_var[1] != 0x00000013) && (test_var[1] != 0x0001) && (test_var[117] == 1)){
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "ALU-Res=%.6d", test_var[26]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[11]), markup);
    g_free (markup);
  }
  else{
    sprintf(buffer, "ALU-Res=%.6d", test_var[26]);
    gtk_label_set_text(GTK_LABEL(data[11]), buffer);
  }

  if(test_var[13] && (test_var[118] == 1)){
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "wa0=%d", test_var[12]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[12]), markup);
    g_free (markup);
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "we0=%d", test_var[13]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[13]), markup);
    g_free (markup);
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "wd0=%d", test_var[14]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[14]), markup);
    g_free (markup);
  }
  else{
    sprintf(buffer, "wa0=%d", test_var[12]);
    gtk_label_set_text(GTK_LABEL(data[12]), buffer);
    sprintf(buffer, "we0=%d", test_var[13]);
    gtk_label_set_text(GTK_LABEL(data[13]), buffer);
    sprintf(buffer, "wd0=%d", test_var[14]);
    gtk_label_set_text(GTK_LABEL(data[14]), buffer);
  }

  if(test_var[37] && (test_var[116] == 1)){
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "Base=%.x", test_var[16]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[16]), markup);
    g_free (markup);
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "Off=%x", test_var[17]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[17]), markup);
    g_free (markup);
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "EA=%x", test_var[18]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[18]), markup);
    g_free (markup);
  }
  else{
    sprintf(buffer, "Base=%x", test_var[16]);
    gtk_label_set_text(GTK_LABEL(data[16]), buffer);
    sprintf(buffer, "Off=%x", test_var[17]);
    gtk_label_set_text(GTK_LABEL(data[17]), buffer);
    sprintf(buffer, "EA=%x", test_var[18]);
    gtk_label_set_text(GTK_LABEL(data[18]), buffer);
  }

  if(test_var[32] && (test_var[116] == 1)){
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "Bypass0=%.6d", test_var[20]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[20]), markup);
    g_free (markup);
  }
  else{
    sprintf(buffer, "Bypass0=%.6d", test_var[20]);
    gtk_label_set_text(GTK_LABEL(data[20]), buffer);
  }
  if(test_var[33] && (test_var[116] == 1)){
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "Bypass1=%.6d", test_var[21]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[21]), markup);
    g_free (markup);
  }
  else{
    sprintf(buffer, "Bypass1=%.6d", test_var[21]);
    gtk_label_set_text(GTK_LABEL(data[21]), buffer);
  }

  if(test_var[38] && (test_var[116] == 1)){
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "Mul0=%.6d", test_var[24]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[24]), markup);
    g_free (markup);
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "Mul1=%.6d", test_var[25]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[25]), markup);
    g_free (markup);
  }
  else{
    sprintf(buffer, "Mul0=%.6d", test_var[24]);
    gtk_label_set_text(GTK_LABEL(data[24]), buffer);
    sprintf(buffer, "Mul1=%.6d", test_var[25]);
    gtk_label_set_text(GTK_LABEL(data[25]), buffer);
  }
  if(test_var[41] && (test_var[117] == 1)){
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "Mul-Res=%.6d", test_var[26]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[26]), markup);
    g_free (markup);
  }
  else{
    sprintf(buffer, "Mul-Res=%.6d", test_var[26]);
    gtk_label_set_text(GTK_LABEL(data[26]), buffer);
  }

  if(test_var[19] && (test_var[117] == 1)){
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "DCCM-Res=%.6d", test_var[19]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[19]), markup);
    g_free (markup);
  }
  else{
    sprintf(buffer, "DCCM-Res=%.6d", test_var[19]);
    gtk_label_set_text(GTK_LABEL(data[19]), buffer);
  }

  if(test_var[29]){
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "wa1=%d", test_var[28]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[28]), markup);
    g_free (markup);
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "we1=%d", test_var[29]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[29]), markup);
    g_free (markup);
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "wd1=%d", test_var[30]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[30]), markup);
    g_free (markup);
  }
  else{
    sprintf(buffer, "wa1=%d", test_var[28]);
    gtk_label_set_text(GTK_LABEL(data[28]), buffer);
    sprintf(buffer, "we1=%d", test_var[29]);
    gtk_label_set_text(GTK_LABEL(data[29]), buffer);
    sprintf(buffer, "wd1=%d", test_var[30]);
    gtk_label_set_text(GTK_LABEL(data[30]), buffer);
  }

  if(test_var[49]){
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "wa2=%d", test_var[48]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[48]), markup);
    g_free (markup);
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "we2=%d", test_var[49]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[49]), markup);
    g_free (markup);
    format = "<span foreground=\"red\">\%s</span>";
    sprintf(buffer, "wd2=%d", test_var[50]);
    markup = g_markup_printf_escaped (format, buffer);
    gtk_label_set_markup (GTK_LABEL (data[50]), markup);
    g_free (markup);
  }
  else{
    sprintf(buffer, "wa2=%d", test_var[48]);
    gtk_label_set_text(GTK_LABEL(data[48]), buffer);
    sprintf(buffer, "we2=%d", test_var[49]);
    gtk_label_set_text(GTK_LABEL(data[49]), buffer);
    sprintf(buffer, "wd2=%d", test_var[50]);
    gtk_label_set_text(GTK_LABEL(data[50]), buffer);
  }


  gtk_main_quit();
}





int main(int argc, char **argv, char **env) {
  
  Verilated::commandArgs(argc, argv);

  Vrvfpgasim* top = new Vrvfpgasim;

  signal(SIGINT, INThandler);

  top->clk = 1;
  int TestInside=0;
  int Cycles=0;

  printf("\nHELLO_TB\n");


  GtkWidget *window;
  GtkWidget *grid;
  GtkWidget *subButton;
  int i;
  void * data[120];

  char buffer[30]; 
  const char *format;
  char *markup;

  gtk_init (0,0);

  window        = gtk_window_new (GTK_WINDOW_TOPLEVEL);
  gtk_container_set_border_width (GTK_CONTAINER(window), 1);

  grid          = gtk_grid_new ();
  gtk_container_add              (GTK_CONTAINER(window), grid);
  gtk_grid_set_row_spacing       (GTK_GRID(grid), 1);
  gtk_grid_set_column_spacing    (GTK_GRID(grid), 1);


  //Pipeline Stages
  GtkWidget *stages[4];
  stages[0]=gtk_label_new ("D");
  stages[1]=gtk_label_new ("X");
  stages[2]=gtk_label_new ("R");
  void * stages_data[4];
  for (i=0;i<3;i++) stages_data[i]=stages[i];
  for (i=0;i<3;i++) gtk_label_set_selectable (GTK_LABEL(stages[i]), TRUE);
  gtk_grid_attach (GTK_GRID(grid), stages[0],  1000, 2, 80, 10);
  gtk_grid_attach (GTK_GRID(grid), stages[1],  2000, 2, 80, 10);
  gtk_grid_attach (GTK_GRID(grid), stages[2],  3000, 2, 80, 10);
  for (i=0;i<3;i++) gtk_label_set_xalign (GTK_LABEL(stages_data[i]), 0.0);
  format = "<span font_desc=\"Bold\" foreground=\"green\">%s</span>";
  sprintf(buffer, "D");
  markup = g_markup_printf_escaped (format, buffer);
  gtk_label_set_markup (GTK_LABEL (stages[0]), markup);
  sprintf(buffer, "X");
  markup = g_markup_printf_escaped (format, buffer);
  gtk_label_set_markup (GTK_LABEL (stages[1]), markup);
  sprintf(buffer, "R");
  markup = g_markup_printf_escaped (format, buffer);
  gtk_label_set_markup (GTK_LABEL (stages[2]), markup);
  g_free (markup);



  //Pipes
  GtkWidget *pipes[5];
  pipes[0]=gtk_label_new ("           Register File");
  pipes[1]=gtk_label_new ("           Bypasses");
  pipes[2]=gtk_label_new ("           I Pipe");
  pipes[3]=gtk_label_new ("           L/S Pipe");
  pipes[4]=gtk_label_new ("           MUL Pipe");
  void * pipes_data[5];
  for (i=0;i<5;i++) pipes_data[i]=pipes[i];
  for (i=0;i<5;i++) gtk_label_set_selectable (GTK_LABEL(pipes[i]), TRUE);
  gtk_grid_attach (GTK_GRID(grid), pipes[0],  100, 2000, 1, 1);
  gtk_grid_attach (GTK_GRID(grid), pipes[1],  100, 2060, 1, 1);
  gtk_grid_attach (GTK_GRID(grid), pipes[2],  100, 3000, 1, 1);
  gtk_grid_attach (GTK_GRID(grid), pipes[3],  100, 4000, 1, 1);
  gtk_grid_attach (GTK_GRID(grid), pipes[4],  100, 5000, 1, 1);
  for (i=0;i<5;i++) gtk_label_set_xalign (GTK_LABEL(pipes_data[i]), 0.0);
  format = "<span font_desc=\"Bold\" foreground=\"green\">%s</span>";
  sprintf(buffer, "           Register File");
  markup = g_markup_printf_escaped (format, buffer);
  gtk_label_set_markup (GTK_LABEL (pipes[0]), markup);
  sprintf(buffer, "           Bypasses");
  markup = g_markup_printf_escaped (format, buffer);
  gtk_label_set_markup (GTK_LABEL (pipes[1]), markup);
  sprintf(buffer, "           I Pipe");
  markup = g_markup_printf_escaped (format, buffer);
  gtk_label_set_markup (GTK_LABEL (pipes[2]), markup);
  sprintf(buffer, "           MUL Pipe");
  markup = g_markup_printf_escaped (format, buffer);
  gtk_label_set_markup (GTK_LABEL (pipes[3]), markup);
  sprintf(buffer, "           L/S Pipe");
  markup = g_markup_printf_escaped (format, buffer);
  gtk_label_set_markup (GTK_LABEL (pipes[4]), markup);
  g_free (markup);




  //Instructions
  GtkWidget *instructions[4];
  for(i=0;i<3;i++) instructions[i]=gtk_label_new ("-------------------------");
  for (i=0;i<3;i++) gtk_label_set_selectable (GTK_LABEL(instructions[i]), TRUE);
  gtk_grid_attach (GTK_GRID(grid), instructions[0],     1000, 1000,  100, 1);
  gtk_grid_attach (GTK_GRID(grid), instructions[1],     2000, 1000,  100, 1);
  gtk_grid_attach (GTK_GRID(grid), instructions[2],     3000, 1000,  100, 1);
  for (i=0;i<3;i++) data[i]=instructions[i];
  for (i=0;i<3;i++) gtk_label_set_xalign (GTK_LABEL(data[i]), 0.0);


  //Registers Reading
  GtkWidget *registers[4];
  for(i=0;i<4;i++) registers[i]=gtk_label_new ("-------------------------");
  for (i=0;i<4;i++) gtk_label_set_selectable (GTK_LABEL(registers[i]), TRUE);
  gtk_grid_attach (GTK_GRID(grid), registers[0],      1000, 2000, 80, 1);
  gtk_grid_attach (GTK_GRID(grid), registers[1],      1000, 2010, 80, 1);
  gtk_grid_attach (GTK_GRID(grid), registers[2],      1100, 2000, 80, 1);
  gtk_grid_attach (GTK_GRID(grid), registers[3],      1100, 2010, 80, 1);
  for (i=0;i<4;i++) data[i+4]=registers[i];
  for (i=0;i<4;i++) gtk_label_set_xalign (GTK_LABEL(data[i+4]), 0.0);


  //ALU Inputs and Result
  GtkWidget *ExIn[4];
  for(i=0;i<4;i++) ExIn[i]=gtk_label_new ("-------------------------");
  for (i=0;i<4;i++) gtk_label_set_selectable (GTK_LABEL(ExIn[i]), TRUE);
  gtk_grid_attach (GTK_GRID(grid), ExIn[0],      1200, 3000, 100, 1);
  gtk_grid_attach (GTK_GRID(grid), ExIn[1],      1200, 3010, 100, 1);
  gtk_grid_attach (GTK_GRID(grid), ExIn[2],      1300, 3005, 100, 1);
  gtk_grid_attach (GTK_GRID(grid), ExIn[3],      2000, 3005, 80, 1);
  for (i=0;i<4;i++) data[i+8]=ExIn[i];
  for (i=0;i<4;i++) gtk_label_set_xalign (GTK_LABEL(data[i+8]), 0.0);

  //Branch Result
  GtkWidget *BrRes[4];
  for(i=0;i<4;i++) BrRes[i]=gtk_label_new ("-------------------------");
  for (i=0;i<4;i++) gtk_label_set_selectable (GTK_LABEL(BrRes[i]), TRUE);
  gtk_grid_attach (GTK_GRID(grid), BrRes[0],      1300, 3007, 100, 1);
  for (i=0;i<4;i++) data[i+52]=BrRes[i];
  for (i=0;i<4;i++) gtk_label_set_xalign (GTK_LABEL(data[i+52]), 0.0);


  //Registers Writting Port 0
  GtkWidget *registerswr[4];
  for(i=0;i<4;i++) registerswr[i]=gtk_label_new ("-------------------------");
  for (i=0;i<4;i++) gtk_label_set_selectable (GTK_LABEL(registerswr[i]), TRUE);
  gtk_grid_attach (GTK_GRID(grid), registerswr[0],      3000, 2000, 80, 1);
  gtk_grid_attach (GTK_GRID(grid), registerswr[1],      3000, 2010, 80, 1);
  gtk_grid_attach (GTK_GRID(grid), registerswr[2],      3000, 2020, 80, 1);
  for (i=0;i<4;i++) data[i+12]=registerswr[i];
  for (i=0;i<4;i++) gtk_label_set_xalign (GTK_LABEL(data[i+12]), 0.0);


  //LSU Adder Inputs and Result
  GtkWidget *LsuIn[4];
  for(i=0;i<4;i++) LsuIn[i]=gtk_label_new ("-------------------------");
  for (i=0;i<4;i++) gtk_label_set_selectable (GTK_LABEL(LsuIn[i]), TRUE);
  gtk_grid_attach (GTK_GRID(grid), LsuIn[0],      1200, 5000, 100, 1);
  gtk_grid_attach (GTK_GRID(grid), LsuIn[1],      1200, 5010, 100, 1);
  gtk_grid_attach (GTK_GRID(grid), LsuIn[2],      1300, 5005, 100, 1);
  gtk_grid_attach (GTK_GRID(grid), LsuIn[3],      2000, 5005, 80, 1);
  for (i=0;i<4;i++) data[i+16]=LsuIn[i];
  for (i=0;i<4;i++) gtk_label_set_xalign (GTK_LABEL(data[i+16]), 0.0);


  //Bypasses
  GtkWidget *byp[4];
  for(i=0;i<4;i++) byp[i]=gtk_label_new ("-------------------------");
  for (i=0;i<4;i++) gtk_label_set_selectable (GTK_LABEL(byp[i]), TRUE);
  gtk_grid_attach (GTK_GRID(grid), byp[0],      1000, 2060, 80, 1);
  gtk_grid_attach (GTK_GRID(grid), byp[1],      1000, 2070, 80, 1);
  for (i=0;i<4;i++) data[i+20]=byp[i];
  for (i=0;i<4;i++) gtk_label_set_xalign (GTK_LABEL(data[i+20]), 0.0);


  //MUL Inputs and Result
  GtkWidget *MulIn[4];
  for(i=0;i<4;i++) MulIn[i]=gtk_label_new ("-------------------------");
  for (i=0;i<4;i++) gtk_label_set_selectable (GTK_LABEL(MulIn[i]), TRUE);
  gtk_grid_attach (GTK_GRID(grid), MulIn[0],      1200, 4000, 100, 1);
  gtk_grid_attach (GTK_GRID(grid), MulIn[1],      1200, 4010, 100, 1);
  gtk_grid_attach (GTK_GRID(grid), MulIn[2],      2000, 4005, 80, 1);
  for (i=0;i<4;i++) data[i+24]=MulIn[i];
  for (i=0;i<4;i++) gtk_label_set_xalign (GTK_LABEL(data[i+24]), 0.0);


  //Registers Writting Port 1
  GtkWidget *registerswr1[4];
  for(i=0;i<4;i++) registerswr1[i]=gtk_label_new ("-------------------------");
  for (i=0;i<4;i++) gtk_label_set_selectable (GTK_LABEL(registerswr1[i]), TRUE);
  gtk_grid_attach (GTK_GRID(grid), registerswr1[0],      3000, 2030, 80, 1);
  gtk_grid_attach (GTK_GRID(grid), registerswr1[1],      3000, 2040, 80, 1);
  gtk_grid_attach (GTK_GRID(grid), registerswr1[2],      3000, 2050, 80, 1);
  for (i=0;i<4;i++) data[i+28]=registerswr1[i];
  for (i=0;i<4;i++) gtk_label_set_xalign (GTK_LABEL(data[i+28]), 0.0);



  //Registers Writting Port 2
  GtkWidget *registerswr2[4];
  for(i=0;i<4;i++) registerswr2[i]=gtk_label_new ("-------------------------");
  for (i=0;i<4;i++) gtk_label_set_selectable (GTK_LABEL(registerswr2[i]), TRUE);
  gtk_grid_attach (GTK_GRID(grid), registerswr2[0],      3000, 2060, 80, 1);
  gtk_grid_attach (GTK_GRID(grid), registerswr2[1],      3000, 2070, 80, 1);
  gtk_grid_attach (GTK_GRID(grid), registerswr2[2],      3000, 2080, 80, 1);
  for (i=0;i<4;i++) data[i+48]=registerswr2[i];
  for (i=0;i<4;i++) gtk_label_set_xalign (GTK_LABEL(data[i+48]), 0.0);



  //White Spaces
  GtkWidget *white[30];
  for(i=0;i<30;i++) white[i]=gtk_label_new ("");
  void * white_data[30];
  for (i=0;i<30;i++) white_data[i]=white[i];
  for (i=0;i<30;i++) gtk_label_set_selectable (GTK_LABEL(white[i]), TRUE);

  gtk_grid_attach (GTK_GRID(grid), white[0],  1100, 1, 500, 1);
  gtk_grid_attach (GTK_GRID(grid), white[1],  2100, 1, 200, 1);

  gtk_grid_attach (GTK_GRID(grid), white[4],  1, 1, 20, 1);

  gtk_grid_attach (GTK_GRID(grid), white[5],  200, 1, 100, 1);

  gtk_grid_attach (GTK_GRID(grid), white[6],  1, 1500, 1, 60);
  gtk_grid_attach (GTK_GRID(grid), white[7],  1, 2300, 1, 50);
  gtk_grid_attach (GTK_GRID(grid), white[8],  1, 2800, 1, 60);
  gtk_grid_attach (GTK_GRID(grid), white[9],  1, 3500, 1, 60);
  gtk_grid_attach (GTK_GRID(grid), white[10],  1, 4500, 1, 60);
  gtk_grid_attach (GTK_GRID(grid), white[11],  1, 5500, 1, 20);

  for (i=0;i<15;i++) gtk_label_set_yalign (GTK_LABEL(white_data[i]), 0.0);



  //Sub Button
  subButton     = gtk_button_new_with_label ("                    + 1 Cycle                      ");
  gtk_grid_attach (GTK_GRID(grid), subButton, 4000, 10000, 1, 1);


  gtk_widget_show_all (window);







  while (!(done || Verilated::gotFinish())) {

    top->eval();

    top->clk = !top->clk;
    main_time+=10;

    if ((top->i0_inst_d)==0x01eef033) TestInside=1;

    if ( (TestInside && top->clk) ){

        Cycles++;

        test_var[0]=top->i0_inst_d;
        test_var[1]=top->i0_inst_x;
        test_var[2]=top->i0_inst_r;
        test_var[3]=top->i0_inst_wb;

        test_var[4]=top->dec_i0_rs1_d;
        test_var[5]=top->dec_i0_rs2_d;
        test_var[6]=top->gpr_i0_rs1_d;
        test_var[7]=top->gpr_i0_rs2_d;

        test_var[8]=top->i0_rs1_d;
        test_var[9]=top->i0_rs2_d;
        test_var[10]=top->result;

        test_var[12]=top->dec_i0_waddr_r;
        test_var[13]=top->dec_i0_wen_r;
        test_var[14]=top->dec_i0_wdata_r;

        test_var[16]=top->rs1_d;
        test_var[17]=top->offset_d;
        test_var[18]=top->full_addr_d;

        test_var[19]=top->lsu_result_m;

        test_var[20]=top->i0_rs1_bypass_data_d;
        test_var[21]=top->i0_rs2_bypass_data_d;

        test_var[24]=top->muldiv_rs1_d;
        test_var[25]=top->i0_rs2_d;
        test_var[26]=top->exu_i0_result_x;
        test_var[27]=top->mul_valid_x;

        test_var[28]=top->dec_nonblock_load_waddr;
        test_var[29]=top->dec_nonblock_load_wen;
        test_var[30]=top->lsu_nonblock_load_data;

        test_var[32]=top->i0_rs1_bypass_en_d;
        test_var[33]=top->i0_rs2_bypass_en_d;
        test_var[34]=top->dec_i0_rs1_en_d;
        test_var[35]=top->dec_i0_rs2_en_d;

        test_var[36]=top->alu_instd;
        test_var[37]=top->lsu_instd;
        test_var[38]=top->mul_instd;
        test_var[39]=top->i0_x_data_en;

        test_var[40]=top->alu_instx;
        test_var[41]=top->mul_instx;

        test_var[44]=top->Bypass0_exu_i0_result_x;
        test_var[45]=top->Bypass0_lsu_nonblock_load_data;
        test_var[46]=top->Bypass1_exu_i0_result_x;
        test_var[47]=top->Bypass1_lsu_nonblock_load_data;

        test_var[48]=top->div_waddr_wb;
        test_var[49]=top->exu_div_wren;
        test_var[50]=top->exu_div_result;

        if((top->instr_control) & 1) test_var[116]=1;
        else test_var[116]=0;
        if((top->instr_control) & 2) test_var[117]=1;
        else test_var[117]=0;
        if((top->instr_control) & 4) test_var[118]=1;
        else test_var[118]=0;

        test_var[119]=top->actual_taken;
        test_var[120]=top->any_branch;

        g_signal_connect(G_OBJECT(subButton), "clicked", G_CALLBACK(PaintOneCycle), data);

        gtk_main();
    }

  }

  exit(0);
}


