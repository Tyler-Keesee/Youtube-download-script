@echo off
setlocal
cd /d "%~dp0"
if not exist ".venv\Scripts\python.exe" (
  python -m venv .venv
  if errorlevel 1 (echo Failed creating Python virtual environment.& exit /b 1)
)
".venv\Scripts\python.exe" -m pip install --upgrade pip
if errorlevel 1 (echo pip upgrade failed.& exit /b 1)
".venv\Scripts\python.exe" -m pip install -r requirements.txt
if errorlevel 1 (echo Dependency installation failed.& exit /b 1)
".venv\Scripts\python.exe" -m compileall -q main.py
if errorlevel 1 (echo Python syntax check failed.& exit /b 1)
echo Setup completed. Run .venv\Scripts\python.exe main.py
exit /b 0
