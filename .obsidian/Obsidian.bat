@echo off

set PP=C:\PortablePrograms
set PMO=G:\ProgramsMisc\Office
set Path=%Path%;^
%PMO%\MiKTeX\texmfs\install\miktex\bin\x64;^
%PP%\Graphviz\bin;^
%PMO%\PanWriter

cd /d "%~dp0.."
set PROJ_DIR=%__CD__%
set PROJ_DIR=%PROJ_DIR:~0,-1%
cd /d "%~dp0..\.."
set ROOT_DIR=%__CD__%
set PROJ_NAME=!PROJ_DIR:%ROOT_DIR%=!
set ROOT_DIR=%PROOT_DIR:~0,-1%

cd /d "%~dp0..\.."
set VAULT_URI=""obsidian://open?vault=%PROJ_NAME%""
"%PP%\HStart\hstart.exe" """%PP%\%~n0\%~n0.exe"" %VAULT_URI%"
