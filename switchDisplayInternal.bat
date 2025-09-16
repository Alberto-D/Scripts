@echo off
CALL sincronizador.vbs
Setlocal
Set laptoponly=C:\Users\alber\Documents\Domotica\laptoponly.flg

if Exist "%laptoponly%" (
    rem flag exists. Activate external display. Then delete flag.
    DisplaySwitch.exe /external
    del /q "%laptoponly%"
	
) else (
    rem flag does not exist. Activate external display. Then create flag
    DisplaySwitch.exe /internal
    Echo I'm a flag for myScript.cmd>"%laptoponly%"
)