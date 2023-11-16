@echo off

@REM Instalando todos los programas mediante el uso de winget

winget install -e --id Google.Chrome

winget install -e --id Microsoft.VisualStudioCode

winget install -e --id Git.Git

winget install -e --id Oracle.JDK.17

echo Se han instalado todos los programas
pause 