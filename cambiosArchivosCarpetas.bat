@echo off
chcp 65001>NUL

set carpeta=%USERPROFILE%\Documents

:inicio
echo Esperando cambios en %carpeta%...
timeout /t 5 /nobreak >nul
for %%F in (%carpeta%\*) do (
    echo Se ha detectado un cambio en: %%F
    rem Agrega aquí la lógica para manejar el cambio
)
goto inicio
