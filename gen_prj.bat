@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

SET PREMAKE=vendor\premake\premake5.exe

if "%~1"=="help" CALL:PRINT_HELP
if "%~1"=="" CALL:PRINT_HELP
if "%~1" neq "" CALL:GEN_PRJ %*

PAUSE
GOTO eof

rem -----------SUB ROUTINES--------------
:GEN_PRJ 
SETLOCAL 
	SET PROJECT_TYPE=%1 

	if %PROJECT_TYPE%=="" SET PROJECT_TYPE=vs2022

	CALL %PREMAKE% %PROJECT_TYPE%
ENDLOCAL
GOTO eof

:PRINT_HELP
SETLOCAL
	CALL %PREMAKE% --help
ENDLOCAL
GOTO eof

:eof
ENDLOCAL
