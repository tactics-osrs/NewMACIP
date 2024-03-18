@echo off
setlocal

:menu
cls
echo.
echo 1. Change MAC Address
echo 2. Change IP Address
echo 3. Help
echo 4. Exit
echo.
set /p choice=Enter your choice: 

if "%choice%"=="1" goto change_mac
if "%choice%"=="2" goto change_ip
if "%choice%"=="3" goto help
if "%choice%"=="4" goto end
goto menu

:change_mac
cls
echo You are about to change your MAC address, which cannot be undone.
set /p proceed=Are you sure? (yes/no): 
if /i "%proceed%"=="yes" (
    echo Changing MAC Address...
    set /p interface=Enter your Interface Name: 
    set /p mac=Enter your New MAC Address: 
    netsh interface set interface "%interface%" newmac="%mac%"
    echo MAC Address changed.
) else (
    echo Operation cancelled.
)
pause
goto menu

:change_ip
cls
echo You are about to change your IP address, which cannot be undone.
set /p proceed=Are you sure? (yes/no): 
if /i "%proceed%"=="yes" (
    echo Changing IP Address...
    set /p interface=Enter your Interface Name: 
    set /p ip=Enter your New IP Address: 
    set /p mask=Enter your Subnet Mask: 
    set /p gateway=Enter your Gateway IP Address: 
    netsh interface ipv4 set address name="%interface%" static %ip% %mask% %gateway%
    echo IP Address changed.
) else (
    echo Operation cancelled.
)
pause
goto menu

:help
cls
echo Help:
echo.
echo 1. Interface Name: This is the name of your network interface. You can find it in the Network Connections control panel.
echo 2. New MAC Address: This is the new MAC address you want to use. It should be in the format XX-XX-XX-XX-XX-XX, where each X is a hexadecimal digit.
echo 3. New IP Address: This is the new IP address you want to use. It should be in the format X.X.X.X, where each X is a number from 0 to 255.
echo 4. Subnet Mask: This is the subnet mask for your network. It is typically 255.255.255.0 for home networks.
echo 5. Gateway IP Address: This is the IP address of your network's gateway, typically your router's IP address.
echo.
pause
goto menu

:end
endlocal
