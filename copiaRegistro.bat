@echo off

chcp 65001>NUL

echo Creando copia de seguridad del Registro...
echo.

REM Comprobar si se tiene permisos de administrador
>nul 2>&1 net session
if %errorlevel% neq 0 (
    echo Necesitas permisos de administrador para realizar esta acción.
    echo Ejecute este script como administrador.
    pause
    exit /b
)

REM Exportar el Registro
reg export "HKEY_LOCAL_MACHINE\Software" "C:\Backups\backup_registro.reg"

if %errorlevel% equ 0 (
    echo Copia de seguridad del Registro creada correctamente.
) else (
    echo Ha ocurrido un error al crear la copia de seguridad del Registro.
)

pause
