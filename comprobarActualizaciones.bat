@echo off
chcp 65001>NUL

echo Bienvenido al Comprobador de Actualizaciones de Windows.


set /p confirmacion="Desea comprobar las actualizaciones? (S/N): "
if /i "%confirmacion%" neq "S" goto :fin


echo Comprobando actualizaciones de Windows...
wmic qfe list brief /format:table > actualizaciones.txt
echo Comprobacion completada. Las actualizaciones son:
type actualizaciones.txt


set /p confirmacion="Desea instalar las ultimas actualizaciones? (S/N): "
if /i "%confirmacion%" neq "S" goto :fin


echo Buscando las ultimas actualizaciones de Windows...
UsoClient StartScan
echo Descargando las ultimas actualizaciones de Windows...
UsoClient StartDownload


echo Mostrando las actualizaciones que se están descargando…
:loop
UsoClient GetDownloadStatus
set /p status="Estado de la descarga: "
if /i not "%status%" equ "Download complete." (
    timeout /t 5 /nobreak
    goto loop
)
echo.
