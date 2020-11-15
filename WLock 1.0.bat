@echo off
setlocal enabledelayedexpansion
title WLock 1.0

:menu
cls
echo ==============MENU==============
echo 1. Ajuste de seguridad
echo 2. Bloquear web
echo 3. Bloquear webs predeterminadas
echo 4. Ayuda
echo 5. Salir
echo ================================
echo.

echo ¿Que quieres hacer?(Numero)
set /p opt=

if %opt% == 1 (goto uno)
if %opt% == 2 (goto dos)
if %opt% == 3 (goto tres)
if %opt% == 4 (goto cuatro)
if %opt% == 5 (exit)

:uno
echo. >> C:\Windows\System32\drivers\etc\hosts
echo Ajuste de seguridad realizado satisfactoriamente.
pause > nul
goto menu

:dos
echo ¿Que pagina web o direccion ip quieres bloquear?
set /p wsip=
echo ¿Estas seguro de que quieres bloquear: %wsip%?(Si/No)
set /p i=
if %i% == Si (
echo 127.0.0.1 !wsip! >> C:\Windows\System32\drivers\etc\hosts
echo !wsip! agregada correctamente.
pause > nul
goto menu
)

if %i% == No (
echo La direccion !wsip! no se ha agregado.
pause > nul
goto menu
)

:tres
echo ¿Quieres bloquear las paginas predeterminadas?(Si/No)
set /p e=
if %e% == Si (
echo 127.0.0.1 www.elcorreo.com >> C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 www.twitter.com >> C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 www.youtube.com >> C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 www.friv.com >> C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 www.netflix.com >> C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 www.amazon.com >> C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 www.twitch.tv >> C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 www.apple.com >> C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 www.pornhub.com >> C:\Windows\System32\drivers\etc\hosts
echo Se han bloqueado satisfactoriamente las webs predeterminadas.
pause > nul
goto menu
)

if %e% == No (
echo No se han bloqueado satisfactoriamente las webs predeterminadas.
pause > nul
goto menu
)

:cuatro
echo 1. El programa se debe abrir en administrador.
echo 2. Primero se debe ejecutar el ajuste de seguridad.
echo 3. Al introduccir una pagina web de debe hacer: www.ejemplo.com
echo 4. Las paginas que se bloquean predeterminadamente son: El correo, Twitter, Youtube, Friv, Netflix, Amazon, Twitch, Apple y Pornhub.
pause > nul
goto menu
