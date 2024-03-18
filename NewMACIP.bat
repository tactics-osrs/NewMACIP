@echo off
setlocal

:menu
cls
echo.
echo 1. Display MAC and IP Address
echo 2. Release and Renew IP Address
echo 3. Change MAC Address
echo 4. Help
echo 5. Exit
echo.
set /p choice=Enter your choice: 

if "%choice%"=="1" goto display_info
if "%choice%"=="2" goto release_renew
if "%choice%"=="3" goto change_mac
if "%choice%"=="4" goto help
if "%choice%"=="5" goto end
goto menu

:display_info
cls
echo Displaying MAC and IP Address...
ipconfig /all
pause
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

:release_renew
cls
echo You are about to release and renew your IP address.
set /p proceed=Are you sure? (yes/no): 
if /i "%proceed%"=="yes" (
    echo Releasing and renewing IP Address...
    ipconfig /release
    ipconfig /renew
    echo IP Address released and renewed.
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
