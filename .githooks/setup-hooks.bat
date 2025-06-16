@echo off
setlocal EnableDelayedExpansion

:: Setup script for Git hooks (Windows)
:: Copies all hook files from .githooks to .git\hooks, skipping this script itself
:: Replaces "Last Modified: {{YYYY-MM-DD}}" in both source and dest with today

REM --- CONFIGURATION ---
set "SRC_DIR=.githooks"
set "DST_DIR=.git\hooks"
set "TODAY="
for /f %%A in ('powershell -Command "Get-Date -Format yyyy-MM-dd"') do set TODAY=%%A

REM --- MAIN LOGIC ---
if not exist "%DST_DIR%" (
    echo [ERROR] No .git directory found. Please run this script at your repository root.
    exit /b 1
)

echo --------------------------------------------------
echo 🔧 Syncing Git hooks to .git\hooks
echo 📅 Last Modified: %TODAY%
echo --------------------------------------------------

pushd %SRC_DIR%
for %%F in (*) do (
    if /I not "%%F"=="setup-hooks.bat" (
        set "SRC=%%F"
        set "DST=..\%DST_DIR%\%%F"

        REM Copy or update hook
        if not exist "!DST!" (
            echo 📥 Copying new hook: %%F
            copy /Y "!SRC!" "!DST!" >nul
        ) else (
            for %%A in ("!SRC!") do set "SRC_DATE=%%~tA"
            for %%B in ("!DST!") do set "DST_DATE=%%~tB"
            if "!SRC_DATE:~0,10!" GTR "!DST_DATE:~0,10!" (
                echo 🔄 Updating hook: %%F (Newer version)
                copy /Y "!SRC!" "!DST!" >nul
            ) else (
                echo ✅ Up-to-date: %%F
            )
        )

        REM Update Last Modified token in both SRC and DST
        powershell -Command "(Get-Content '!SRC!') -replace 'Last Modified: \{\{[0-9\-]*\}\}', 'Last Modified: %TODAY%' | Set-Content '!SRC!'"
        powershell -Command "(Get-Content '!DST!') -replace 'Last Modified: \{\{[0-9\-]*\}\}', 'Last Modified: %TODAY%' | Set-Content '!DST!'"
    )
)
popd

echo --------------------------------------------------
echo ✅ Hook installation complete.
pause
exit /b 0
