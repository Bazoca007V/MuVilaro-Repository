@echo off
rem ============================================================
rem  INICIAR TODO: panel de licencia + 6 servers (CS JS DS SM GS GSCS)
rem  Uso: click derecho -> "Ejecutar como administrador"
rem  (todo lo hace panel_portable.exe; este archivo solo lo llama)
rem ============================================================
cd /d "%~dp0"
echo.
echo   === MSPro - inicio de un click ===
echo   Si pides permiso de administrador (UAC), acepta UNA vez.
echo.
panel_portable.exe --start-all --wait
echo.
pause
