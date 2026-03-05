@echo off
echo Starting Bright Future Academy Website Server...
echo.

REM Check if Node.js is available
where node >nul 2>nul
if %ERRORLEVEL% == 0 (
    echo Starting Node.js server...
    echo Website will be available at: http://localhost:8000
    echo Press Ctrl+C to stop the server
    echo.
    node server.js
) else (
    echo Node.js not found. Trying Python...
    
    REM Check if Python is available
    where python >nul 2>nul
    if %ERRORLEVEL% == 0 (
        echo Starting Python server...
        echo Website will be available at: http://localhost:8000
        echo Press Ctrl+C to stop the server
        echo.
        python -m http.server 8000
    ) else (
        where py >nul 2>nul
        if %ERRORLEVEL% == 0 (
            echo Starting Python server...
            echo Website will be available at: http://localhost:8000
            echo Press Ctrl+C to stop the server
            echo.
            py -m http.server 8000
        ) else (
            echo Neither Node.js nor Python found!
            echo.
            echo Please install one of the following:
            echo 1. Node.js from https://nodejs.org
            echo 2. Python from https://python.org
            echo.
            echo Alternative: Use VS Code Live Server extension
            pause
        )
    )
)

pause
