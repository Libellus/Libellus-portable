@echo off
:: Code by: Libellus
:: http://libellus.no
:: Licensed under the Apache License, Version 2.0 (the "License"); you may
:: not use this file except in compliance with the License. You may obtain
:: a copy of the License at
:: http://www.apache.org/licenses/LICENSE-2.0

:: Sets basepath to the folder the script is run from
set basepath=%~dp0

:: Opens the multicast script with the portable python package
"%basepath%windows_tools\python\python.exe" "%basepath%libellus_multicast_1.5.py"