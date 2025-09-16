@echo off
CALL sincronizador.vbs

Setlocal
Set bothscreens=C:\PATHTOFILE\bothscreens.flg

if Exist "%bothscreens%" (
    rem flag exists. Activate extend display. Then delete flag.
    DisplaySwitch.exe /extend
    del /q "%bothscreens%"
	
) else (
    rem flag does not exist. Activate external display. Then create flag
    DisplaySwitch.exe /external
    Echo I'm a flag for myScript.cmd>"%bothscreens%"

)
