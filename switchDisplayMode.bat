@echo off
CALL sincronizador.vbs

Setlocal
Set laptoponly=C:\PATHTOFILE\laptoponly.flg
Set bothscreens=C:\PATHTOFILE\bothscreens.flg

if Exist "%laptoponly%" (
    rem flag exists. Activate internal display. Then delete flag.
    DisplaySwitch.exe /external
	if Exist "%bothscreens%" (
 	   rem flag exists. Activate internal display. Then delete flag.
 	   DisplaySwitch.exe /external
  	  del /q "%laptoponly%"
  	  del /q "%bothscreens%"
	) else (
 	   rem flag does not exist. Activate external display. Then create flag
  	  DisplaySwitch.exe /extend
  	  Echo I'm a flag for myScript.cmd>"%bothscreens%"
	)

) else (
    rem flag does not exist. Activate external display. Then create flag
    DisplaySwitch.exe /internal
    Echo I'm a flag for myScript.cmd>"%laptoponly%"

)
