@echo off

:: Change to script directory
cd /d "%~dp0"

echo Building in: %CD%
if not exist ".venv\Scripts\python.exe" (echo Run setup.bat first.& exit /b 1)
echo Building YouTube Downloader Pro...
".venv\Scripts\python.exe" -m PyInstaller ^
    --clean ^
    --noconfirm ^
    --name "YouTube Downloader Pro" ^
    --windowed ^
    --icon=icon.ico ^
    --hidden-import tkinter ^
    --hidden-import ttkthemes ^
    --hidden-import PIL ^
    --hidden-import yt_dlp ^
    --hidden-import urllib3 ^
    --hidden-import brotli ^
    --hidden-import certifi ^
    --hidden-import ffmpeg ^
    --add-data "EULA.md;." ^
    --add-data "LICENSE.md;." ^
    --add-data "DISCLAIMER.md;." ^
    --onefile ^
    main.py

if %errorlevel% equ 0 (
    echo.
    echo Build successful! 
    echo.
    echo Note: User data will be stored in: %%APPDATA%%\YouTube Downloader Pro
    echo - Downloads: %%APPDATA%%\YouTube Downloader Pro\downloads
    echo - Log file:  %%APPDATA%%\YouTube Downloader Pro\activity.log
    echo.
    explorer "dist"
) else (
    echo.
    echo Build failed! Check the error messages above.
    echo.
)
pause