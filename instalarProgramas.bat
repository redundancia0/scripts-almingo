@echo off

@REM Instalando todos los programas mediante el uso de winget

echo Instalando Google Chrome
winget install -e --id Google.Chrome

echo Instalando Visual Studio Code
winget install -e --id Microsoft.VisualStudioCode

echo Instalando Git
winget install -e --id Git.Git

echo Instalando Java JDK
winget install -e --id Oracle.JDK.17

echo Se han instalado todos los programas
pause 
