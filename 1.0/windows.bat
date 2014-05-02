@echo off
:: Code by: Libellus
:: http://libellus.no
:: Licensed under the Apache License, Version 2.0 (the "License"); you may
:: not use this file except in compliance with the License. You may obtain
:: a copy of the License at
:: http://www.apache.org/licenses/LICENSE-2.0

:: Sets basepath to the folder the script is run from
set basepath=%~dp0

:: Displays logo
type "%basepath%libellus\config\logo\logo.txt"
echo Welcome to Libellus 1.0 - Crisis Management Tool

:: If the script is run on system where administrator rights are needed
tasklist 1>NUL 2>NUL & IF ERRORLEVEL 1 ( 
    echo You need to have administrator privileges to run this script.
    echo Please right click on "windows.bat" and choose Run as administrator. 
    echo. 
    pause 
    exit /d 
) 

:: Wait for two seconds in batch
ping 127.0.0.1 -n 2 > nul

:: Check if erl.exe is already running. There can only be one erl eumulator
::  running at the same time
tasklist /fi "imagename eq erl.exe" | find /i "erl.exe" > nul
if not errorlevel 1 (
    echo Libellus is already running...
    echo Close down and exit the application?
    goto input
    
    :input
    set option=
    set /p option="Yes or No: "
    if /i "%option%"=="yes" goto yes
    if /i "%option%"=="no" goto no
    goto input

    :yes
    echo Closing down Libellus...
    :: Kills the running erl.exe process
    taskkill /f /im erl.exe
    ping 127.0.0.1 -n 2 > nul
    EXIT

    :no
    echo Libellus is still running...
    echo Opening browser window...
    ping 127.0.0.1 -n 4 > nul
    :: Starts the default web browser with the following address
    start https://127.0.0.1:6984/libellus/index.html
    EXIT

) else (
    :: Run the UUID-generator script before CouchDB starts
    "%basepath%libellus\portable_scripts\windows_tools\python\python.exe" "%basepath%libellus\portable_scripts\generate_uuidconfig.py" windows
    ping 127.0.0.1 -n 2 > nul
    :: Run CouchDB in a hidden terminal
    cd "%basepath%libellus\windows_database\CouchDB\bin"
    erl -sasl errlog_type error -s couch +A 4 +W w -detached
)

ping 127.0.0.1 -n 5 > nul
:: Starts the default web browser with the following address
start https://127.0.0.1:6984/libellus/index.html
