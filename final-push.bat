@echo off
echo ===================================================
echo Final Push to GitHub - Daffodils Infant School
echo ===================================================
echo.
echo 1. Make sure you have your GitHub Personal Access Token
echo 2. When prompted for password, PASTE THE TOKEN (not your GitHub password)
echo.
pause

echo.
echo Pushing to GitHub...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ===================================================
    echo ✅ SUCCESS! Website pushed to GitHub!
    echo ===================================================
    echo.
    echo Your repository is now available at:
    echo https://github.com/Adib-Addie/daffodils-infant-school
    echo.
    echo Next steps:
    echo 1. Go to repository Settings → Pages
    echo 2. Select "Deploy from a branch"
    echo 3. Choose "main" branch and "/ (root)" folder
    echo 4. Your website will be live at:
    echo https://Adib-Addie.github.io/daffodils-infant-school/
    echo.
) else (
    echo.
    echo ❌ Push failed. Please check:
    echo 1. Token is correct and not expired
    echo 2. Repository URL is correct
    echo 3. You have push permissions
    echo.
)

pause
