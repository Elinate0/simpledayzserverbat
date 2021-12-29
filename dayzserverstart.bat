@echo off
cls
set watch=DayZ Server
title %watch% Watchdog
cd "DAYZ SERVER LOCATION: EXAMPLE: \steam2\steamapps\common\DayZServer"
:watchdog
echo (%time%) %watch% started.
start "DayZ Server" /wait "DayZServer_x64.exe" -config=serverDZ.cfg "-mod=@MODSHERE;"-port=2302 -dologs -adminlog -netlog -freezecheck
echo (%time%) %watch% closed or crashed, restarting.
goto watchdog
