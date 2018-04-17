@echo off

SET CURRENTDIR=%cd%
SET VM_OPTIONS_FILE=%CURRENTDIR%\ameba.vmoptions

SET ACC=
FOR /F "usebackq delims=" %%i IN ("%VM_OPTIONS_FILE%") DO CALL "%CURRENTDIR%\append.bat" "%%i"

cd..
SET PARENTDIR=%cd%

rem SET NPN=
rem FOR /R "%PARENTDIR%\lib" %%i IN ("grizzly-npn-api-?.?.jar") DO SET NPN=%%i

set LIB_CP=%PARENTDIR%;%PARENTDIR%\lib\*;

java %ACC% -cp "%LIB_CP%" ameba.Ameba %*

cd %CURRENTDIR%