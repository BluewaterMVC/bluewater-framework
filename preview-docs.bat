@echo off
setlocal

echo ===========================================
echo  Bluewater Framework: Preview Technical Docs
echo ===========================================

REM Check if Python is installed
where python >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Python is not installed or not in your PATH.
    echo Please install Python 3.x from https://www.python.org/downloads/
    pause
    exit /b 1
)

REM Check if pip is installed
where pip >nul 2>&1
if errorlevel 1 (
    echo [ERROR] pip is not installed or not in your PATH.
    echo Please install pip for Python 3.x.
    pause
    exit /b 1
)

REM Install MkDocs and Material theme if not already installed
pip show mkdocs >nul 2>&1
if errorlevel 1 (
    echo [INFO] Installing MkDocs and MkDocs-Material...
    pip install mkdocs mkdocs-material
)

REM Check for mkdocs.yml
if not exist mkdocs.yml (
    echo [INFO] No mkdocs.yml found. Creating a minimal config for local preview...
    echo site_name: Bluewater Technical Documentation> mkdocs.yml
    echo docs_dir: technical>> mkdocs.yml
    echo theme:>> mkdocs.yml
    echo "  name: material">> mkdocs.yml
)

REM Start MkDocs local server
echo [INFO] Launching MkDocs at http://localhost:8000/ ...
mkdocs serve

endlocal
pause
