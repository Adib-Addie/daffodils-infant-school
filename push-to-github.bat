@echo off
echo ===================================================
echo Pushing Daffodils Infant School to GitHub
echo ===================================================
echo.

REM Check if git is available
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Git is not installed!
    echo Please install Git from https://git-scm.com/download/win
    echo Then run this script again.
    pause
    exit /b 1
)

echo Git found. Starting push process...
echo.

REM Initialize git repository
echo 1. Initializing Git repository...
git init
if %errorlevel% neq 0 (
    echo ERROR: Failed to initialize git repository
    pause
    exit /b 1
)

REM Add all files
echo 2. Adding all files...
git add .
if %errorlevel% neq 0 (
    echo ERROR: Failed to add files
    pause
    exit /b 1
)

REM Create commit
echo 3. Creating commit...
git commit -m "Initial commit: Complete Daffodils Infant School website with modern design

- Responsive homepage with hero section and features
- About page with school history and mission
- Admissions page with process and requirements  
- Academics page with curriculum details
- Gallery page with photo filtering
- Contact page with map and information
- Modern animations and interactions
- Mobile-friendly design"
if %errorlevel% neq 0 (
    echo ERROR: Failed to create commit
    pause
    exit /b 1
)

REM Add remote origin
echo 4. Adding remote repository...
git remote add origin https://github.com/Adib-Addie/daffodils-infant-school.git
if %errorlevel% neq 0 (
    echo WARNING: Remote may already exist or network error
)

REM Push to GitHub
echo 5. Pushing to GitHub...
git push -u origin main
if %errorlevel% neq 0 (
    echo ERROR: Failed to push to GitHub
    echo Please check:
    echo 1. GitHub repository exists at: https://github.com/Adib-Addie/daffodils-infant-school
    echo 2. You have correct GitHub credentials
    echo 3. Repository name is correct
    pause
    exit /b 1
)

echo.
echo ===================================================
echo SUCCESS! Your website is now on GitHub!
echo ===================================================
echo.
echo Your repository is available at:
echo https://github.com/Adib-Addie/daffodils-infant-school
echo.
echo You can now:
echo 1. Enable GitHub Pages for free hosting
echo 2. Share the repository link
echo 3. Continue development
echo.
pause
