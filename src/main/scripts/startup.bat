@echo off

SET CURRENTDIR=%cd%
SET VM_OPTIONS_FILE=%CURRENTDIR%\ameba.vmoptions

SET ACC=
FOR /F "usebackq delims=" %%i IN ("%VM_OPTIONS_FILE%") DO CALL "%CURRENTDIR%\append.bat" "%%i"

cd..
SET PARENTDIR=%cd%

set LIB_CP=%PARENTDIR%;%PARENTDIR%\lib\*;

java -Xbootclasspath/p:%PARENTDIR%\lib\grizzly-npn-bootstrap-1.2.jar %ACC% -cp "%LIB_CP%" ameba.Ameba %*