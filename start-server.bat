@echo off
echo Starting local server...
echo Website will be available at: http://localhost:8000
echo Press Ctrl+C to stop the server
echo.

REM Try to start Python server
python -m http.server 8000 2>nul
if errorlevel 1 (
    echo Python not found. Trying alternative methods...
    
    REM Try with py command
    py -m http.server 8000 2>nul
    if errorlevel 1 (
        echo Python not available. Please install Python or use another method.
        echo.
        echo Alternative options:
        echo 1. Install Python from https://python.org
        echo 2. Use VS Code Live Server extension
        echo 3. Use any other local web server
        pause
    )
)
