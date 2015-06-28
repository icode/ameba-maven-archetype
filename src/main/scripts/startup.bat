@echo off

SET CURRENTDIR=%cd%
SET VM_OPTIONS_FILE=%CURRENTDIR%\ameba.vmoptions

SET VM_OPTIONS=
FOR /F "usebackq delims=" %%i IN ("%VM_OPTIONS_FILE%") DO CALL "%CURRENTDIR%\append.bat" "%%i"

cd..
SET PARENTDIR=%cd%

set LIB_CP=%PARENTDIR%;%PARENTDIR%\lib\*;

java %VM_OPTIONS% -cp "%LIB_CP%" ameba.Ameba %*