@echo OFF
reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT

::check for OS architecture to run either 32bit or 64bit installer
if %OS%==64BIT (
:: /S, -ms are for silently installation (default locations and parameters)
::checks if the file exists
if exist "%~dp0\Adobe Reader v9.10\AdbeRdr910 en Std.exe" (
	echo "Adobe en cours d'execution"
	start "Adobe" "%~dp0\Adobe Reader v9.10\AdbeRdr910 en Std.exe" /sAll /rs /msi EULA_ACCEPT=YES
) ELSE (
	echo "Adobe x64 Introuvable"
	pause
)
@echo off
if exist "%~dp0\Firefox Setup 107.0 x64.exe" (
	echo "Firefox en cours d'execution"
	start "Firefox" "%~dp0\Firefox Setup 107.0 x64.exe" -ms
) ELSE (
	echo "Firefox x64 Introuvable"
	pause
)

@echo off
if exist "%~dp0\winrar-x64-611fr.exe" (
	echo "Win rar en cours d'execution"
	start "Winrar" "%~dp0\winrar-x64-611fr.exe" /S
) ELSE (
	echo "Winrar x64 Introuvable"
	pause
)
@echo off
if exist "%~dp0\vlc-2.2.6-win32.exe" (
	echo "Vlc en cours d'execution"
	start "VLC" "%~dp0\vlc-2.2.6-win32.exe" /S
) ELSE (
	echo "Vlc x64 Introuvable"
	pause
)

@echo off
::checks if it's Win 7, if Yes it runs chrome V107 ( latest version suported on Win7) Else it runs the latest version of Chrome
setlocal
if "%version%" == "6.1" (
	if exist "%~dp0\ChromeStandaloneV107x64.exe" (
		echo "Chrome V 107 en cours d'execution"
		start "Chrome" "%~dp0\ChromeStandaloneV107x64.exe" 
		) ELSE ( echo "Chrome V 107 64 introuvable"
			 pause )
) ELSE (
	if exist "%~dp0\ChromeStandaloneSetup x64.exe" (
		echo "Chrome en cours d'execution"
		start "Chrome" "%~dp0\ChromeStandaloneSetup x64.exe" 
		) ELSE ( echo "Chrome 64 introuvable"
			 pause ) )
endlocal
)

if %OS%==32BIT (

@echo off
if exist "%~dp0\Adobe Reader v9.10\AdbeRdr910 en Std.exe" (
	echo "Adobe en cours d'execution"
	start "Adobe" "%~dp0\Adobe Reader v9.10\AdbeRdr910 en Std.exe" /sAll /rs /msi EULA_ACCEPT=YES
) ELSE (
	echo "Adobe x86 Introuvable"
	pause
)

@echo off
if exist "%~dp0\Firefox Setup 107.0 x86.exe" (
	echo "Firefox en cours d'execution"
	start "Firefox" "%~dp0\Firefox Setup 107.0 x86.exe" -ms
) ELSE (
	echo "Firefox x86 Introuvable"
	pause
)

@echo off
setlocal
if "%version%" == "6.1" (
:: 6.1 stands for Windows 7
	if exist "%~dp0\ChromeStandaloneV107x86.exe" (
		echo "Chrome V 107 en cours d'execution"
		start "Chrome" "%~dp0\ChromeStandaloneV107x86.exe" 
		) ELSE ( echo "Chrome V 107 86 introuvable"
			 pause )
) ELSE (
	if exist "%~dp0\ChromeStandaloneSetup x86.exe" (
		echo "Chrome en cours d'execution"
		start "Chrome" "%~dp0\ChromeStandaloneSetup x86.exe" 
		) ELSE ( echo "Chrome 86 introuvable"
			 pause ) )
endlocal

@echo off
if exist "%~dp0\winrar-x64-611fr.exe" (
	echo "Win rar en cours d'execution"
	start "Winrar" "%~dp0\winrar-x32-611fr.exe" /S
) ELSE (
	echo "Winrar x86 Introuvable"
	pause
)

@echo off
if exist "%~dp0\vlc-2.2.6-win32.exe" (
	echo "Vlc en cours d'execution"
	start "VLC" "%~dp0\vlc-2.2.6-win32.exe" /S
) ELSE (
	echo "Vlc x86 Introuvable"
	pause
)
)