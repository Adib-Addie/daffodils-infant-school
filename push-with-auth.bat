@echo off
echo ===================================================
echo GitHub Authentication Helper
echo ===================================================
echo.
echo Choose authentication method:
echo 1. Personal Access Token
echo 2. GitHub CLI
echo 3. SSH Key
echo.
set /p choice="Enter your choice (1-3): "

if "%choice%"=="1" goto TOKEN_AUTH
if "%choice%"=="2" goto CLI_AUTH
if "%choice%"=="3" goto SSH_AUTH
goto INVALID

:TOKEN_AUTH
echo.
echo === Personal Access Token Method ===
echo 1. Go to: https://github.com/settings/tokens
echo 2. Click "Generate new token (classic)"
echo 3. Give it a name and check "repo" permissions
echo 4. Copy the generated token
echo 5. When prompted for password, paste the token
echo.
pause
git push -u origin main
goto END

:CLI_AUTH
echo.
echo === GitHub CLI Method ===
echo Installing GitHub CLI...
winget install GitHub.cli
echo.
echo Logging in to GitHub...
gh auth login
echo.
echo Pushing to GitHub...
git push -u origin main
goto END

:SSH_AUTH
echo.
echo === SSH Key Method ===
echo 1. Generate SSH key: ssh-keygen -t ed25519 -C "your_email@example.com"
echo 2. Add to GitHub: Copy content of ~/.ssh/id_ed25519.pub
echo 3. Go to GitHub → Settings → SSH keys → Add new
echo 4. Test connection: ssh -T git@github.com
echo.
echo Switching to SSH remote...
git remote set-url origin git@github.com:Adib-Addie/daffodils-infant-school.git
git push -u origin main
goto END

:INVALID
echo Invalid choice. Please run the script again.
pause
exit /b 1

:END
echo.
echo ===================================================
echo If successful, your repository is at:
echo https://github.com/Adib-Addie/daffodils-infant-school
echo ===================================================
pause
