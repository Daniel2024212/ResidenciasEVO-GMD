@echo off
setlocal
cd /d "%~dp0"
where git >nul 2>nul || (echo Instala Git para Windows primero.& pause & exit /b 1)
if not exist .git git init -b main
git branch -M main
git remote remove origin >nul 2>nul
git remote add origin https://github.com/Daniel2024212/ResidenciasEVO-GMD.git
git add .
git reset -q -- local.properties 2>nul
git commit -m "Publicar proyecto EvoGMD sin archivos Markdown"
git push -u origin main
pause
