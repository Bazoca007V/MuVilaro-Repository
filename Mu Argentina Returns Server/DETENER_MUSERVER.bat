@echo off
rem ============================================================
rem  DETENER TODO: los 6 servers + el panel de licencia
rem  (no hace falta admin para esto)
rem ============================================================
cd /d "%~dp0"
panel_portable.exe --stop-all
echo.
pause
