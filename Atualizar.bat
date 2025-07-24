@echo off
cd d %~dp0
echo ----------------------------
echo INICIANDO DEPLOY AUTOMÁTICO
echo ----------------------------
setlocal enabledelayedexpansion
for f tokens=1-4 delims=  %%a in ('date t') do (
  set dt=%%d-%%b-%%c
)
for f tokens=1-2 delims=  %%a in ('time t') do (
  set tm=%%a%%b
)
git add .
git commit -m Deploy automático em !dt! às !tm!
git push origin main
echo.
echo ✅ DEPLOY ENVIADO PARA O GITHUB
echo Aguarde alguns segundos e veja no Netlify.
pause
