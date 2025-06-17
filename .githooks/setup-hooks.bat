@echo off
REM Bluewater Git Hooks Installer (Windows)
SETLOCAL ENABLEDELAYEDEXPANSION

FOR /F "delims=" %%I IN ('git rev-parse --show-toplevel') DO SET REPO_ROOT=%%I

SET HOOKS=pre-commit

echo === Bluewater Git Hooks Installer (Windows) ===

FOR %%H IN (%HOOKS%) DO (
    SET SRC=%REPO_ROOT%\.githooks\%%H
    SET DEST=%REPO_ROOT%\.git\hooks\%%H
    IF EXIST "!SRC!" (
        COPY /Y "!SRC!" "!DEST!" >NUL
        echo Installed: %%H
    ) ELSE (
        echo Warning: Hook script !SRC! not found.
    )
)

echo All supported hooks installed.
echo You may now commit with project-standard hooks enforced.

ENDLOCAL
