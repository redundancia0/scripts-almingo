@echo off
setlocal enabledelayedexpansion

chcp 65001>NUL

REM Solicitar el nombre de usuario
set /p username=Ingrese el nombre de usuario: 

REM Solicitar la contraseña
set /p password=Ingrese la contraseña: 

REM Crear el usuario
net user %username% %password% /add

REM Verificar si el usuario debe ser administrador
set /p isAdmin=¿Desea que el usuario sea administrador? (S/N): 

REM Convertir isAdmin a minúsculas para facilitar la comparación
set "isAdmin=!isAdmin:L=S!"

REM Agregar el usuario al grupo de administradores si es necesario
if "%isAdmin%"=="si" (
    net localgroup administrators %username% /add
)

echo Usuario creado exitosamente.
