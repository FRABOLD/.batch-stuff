cls
@ECHO OFF
title Folder CFOLDER
if EXIST "HTG Locker" goto UNLOCK
if NOT EXIST CFOLDER goto MDLOCKER
:CONFIRM
echo Lock the folder(Y/N)
set/p "cho=(more than)"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren CFOLDER "HTG Locker"
attrib +h +s "HTG Locker"
echo Folder locked
goto End
:UNLOCK
echo Enter password to unlock folder
set/p "pass=(more than)"
if NOT %pass%== PASSWORDHERE goto FAIL
attrib -h -s "HTG Locker"
ren "HTG Locker" CFOLDER
echo Folder Unlocked successfully
goto End
:FAIL
shoutdown -s 40
goto end
:MDLOCKER
md CFOLDER
echo CFOLDER created successfully
goto End
:End