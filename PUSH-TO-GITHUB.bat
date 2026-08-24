@echo off
setlocal
cd /d "%~dp0"
echo ==========================================================
echo   Pushing ghost-front to GitHub
echo ==========================================================
echo.
where git >nul 2>&1 || (echo ERROR: git is not installed. Get it from https://git-scm.com/download/win & pause & exit /b 1)

if not exist ".git" (
  git init -b main
  git add -A
  git -c user.name="Dan Cockrell" -c user.email="dancockrell@gmail.com" commit -m "Ghost Front v21: WW2 horror platformer, single-file build"
) else (
  git add -A
  git -c user.name="Dan Cockrell" -c user.email="dancockrell@gmail.com" commit -m "update" || echo (nothing new to commit)
)

where gh >nul 2>&1
if %errorlevel%==0 (
  echo Creating the repo with the GitHub CLI...
  gh repo create ghost-front --private --source=. --remote=origin --push && goto done
)

echo.
echo No GitHub CLI found - using plain git.
echo If you have NOT created the repo yet, open this and make an EMPTY repo named: ghost-front
echo   https://github.com/new
echo   ^(no README, no .gitignore, no licence^)
echo.
pause
git remote remove origin >nul 2>&1
git remote add origin https://github.com/dancockrell/ghost-front.git
git push -u origin main

:done
echo.
echo ==========================================================
echo   Done:  https://github.com/dancockrell/ghost-front
echo ==========================================================
pause
