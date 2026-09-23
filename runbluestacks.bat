@echo off
title Flutter - BlueStacks

echo.
echo ==========================================
echo       FLUTTER + BLUESTACKS
echo ==========================================
echo.

echo [1/3] Menghubungkan BlueStacks...
"C:\Users\Lenovo\AppData\Local\Android\Sdk\platform-tools\adb.exe" connect 127.0.0.1:5555

echo.
echo [2/3] Mengecek device...
"C:\Users\Lenovo\AppData\Local\Android\Sdk\platform-tools\adb.exe" devices

echo.
echo [3/3] Menjalankan Flutter di BlueStacks...
flutter run -d 127.0.0.1:5555

pause