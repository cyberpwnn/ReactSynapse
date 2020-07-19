@echo off
cd ..
cd app
echo === BUILDING WEB ===
call flutter channel beta
call flutter upgrade --force
call flutter precache
call flutter build web --release
cd ..
mkdir "web"
echo F|xcopy /y /s /e /f /q "app/build/web" "web"
echo F|xcopy /y /s /e /f /q "web-inject" "web"