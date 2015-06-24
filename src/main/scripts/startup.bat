@echo off

SET CURRENTDIR=%cd%
cd..
SET PARENTDIR=%cd%

set LIB_CP=%PARENTDIR%;%PARENTDIR%\lib\*;

java -cp "%LIB_CP%" ameba.Ameba