@echo off 
:appdatatemp
cd %USERPROFILE%\appdata\local\temp
del /f /q *.*
goto windowstemp
:windowstemp
cd C:\Windows\Temp
del /f /q *.*

