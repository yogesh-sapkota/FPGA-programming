@echo off
REM ****************************************************************************
REM Vivado (TM) v2022.2.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Fri Apr 14 11:50:20 -0400 2023
REM SW Build 3719031 on Thu Dec  8 18:35:04 MST 2022
REM
REM IP Build 3718410 on Thu Dec  8 22:11:41 MST 2022
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim Main_Driver_behav -key {Behavioral:sim_1:Functional:Main_Driver} -tclbatch Main_Driver.tcl -view C:/Users/ysapkota/Downloads/DDS_SineWave/DDS_SineWave/DDS_SineWave_behav.wcfg -log simulate.log"
call xsim  Main_Driver_behav -key {Behavioral:sim_1:Functional:Main_Driver} -tclbatch Main_Driver.tcl -view C:/Users/ysapkota/Downloads/DDS_SineWave/DDS_SineWave/DDS_SineWave_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
