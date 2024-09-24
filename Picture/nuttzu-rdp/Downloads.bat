@echo off
Import-Module Microsoft.PowerShell.Security
curl -L -o login.py https://raw.githubusercontent.com/NuttZu/Public-Picture/refs/heads/main/Picture/nuttzu-rdp/login.py
curl -L -o loop.bat https://raw.githubusercontent.com/NuttZu/Public-Picture/refs/heads/main/Picture/nuttzu-rdp/loop.bat
curl -L -o show.bat https://raw.githubusercontent.com/NuttZu/Public-Picture/refs/heads/main/Picture/nuttzu-rdp/show.bat
certutil -urlcache -split -f "https://github.com/NuttZu/Public-Picture/raw/refs/heads/main/Picture/nuttzu-rdp/rustdesk-1.3.1-x86_64.exe" rustdesk.exe
pip install pyautogui --quiet
pip install psutil --quiet
curl -s -L -o time.py https://raw.githubusercontent.com/NuttZu/Public-Picture/refs/heads/main/Picture/nuttzu-rdp/timelimit.py
curl -s -L -o C:\Users\Public\Desktop\Winrar.exe https://github.com/NuttZu/Public-Picture/raw/refs/heads/main/Picture/nuttzu-rdp/winrar-x64-621.exe
powershell -Command "Invoke-WebRequest 'https://github.com/NuttZu/Public-Picture/raw/refs/heads/main/Picture/nuttzu-rdp/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
C:\Users\Public\Desktop\Winrar.exe /S
del C:\Users\Public\Desktop\Winrar.exe
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > errormsg.txt 2>&1
del /f "C:\Users\Public\Desktop\Unity Hub.lnk" > errormsg.txt 2>&1
set password=123456
powershell -Command "Set-LocalUser -Name 'admin' -Password (ConvertTo-SecureString -AsPlainText '%password%' -Force)"
start "" "rustdesk.exe"
python login.py
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f
tzutil /s "SE Asia Standard Time"
