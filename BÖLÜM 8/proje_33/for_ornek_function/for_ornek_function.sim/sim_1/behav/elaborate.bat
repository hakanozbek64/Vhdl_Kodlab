@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 155d78fe98934165a130bc7d2f9b3543 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot for_ornek_function_behav xil_defaultlib.for_ornek_function -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
