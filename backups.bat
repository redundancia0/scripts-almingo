@echo off

set "carpeta=C:\Origen"
set "ruta_backups=C:\Backups"
set "archivo_backup=Backup_%date:~-10,2%-%date:~-7,2%-%date:~-4,4%.zip"

if not exist "%ruta_backups%" (
    echo La carpeta de backups no existe. Creando...
    mkdir "%ruta_backups%"
)

echo Realizando copia de seguridad de la carpeta: %carpeta%
echo Guardando en: %ruta_backups%\%archivo_backup%

powershell -command "Compress-Archive -Path '%carpeta%\*' -DestinationPath '%ruta_backups%\%archivo_backup%' -Force"

echo Backup completado.

for /F "delims=" %%i in ('curl --upload-file "%ruta_backups%\%archivo_backup%" https://transfer.sh/%archivo_backup%') do set "enlace=%%i"

echo URL de la subida: %enlace%
pause
