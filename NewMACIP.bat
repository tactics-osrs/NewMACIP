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
echo.
echo Help for MAC and IP Address location:
echo.
echo Look for the section that corresponds to the network interface you're interested in (e.g., 'Ethernet adapter Ethernet').
echo.
echo - 'IPv4 Address' is your computer's IP address on your local network.
echo - 'Physical Address' is your computer's MAC address.
echo - 'Description' is the name of the network interface.
echo - 'DHCP Enabled' tells you whether your computer is getting its IP address from a DHCP server (usually your router).
echo - 'Default Gateway' is the IP address of your router or other gateway device.
echo - 'DNS Servers' are the IP addresses of the DNS servers your computer is using.
echo.
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
echo 1. Display MAC and IP Address: This option will display your current MAC and IP address using the 'ipconfig /all' command.
echo.
echo 2. Release and Renew IP Address: This option will release your current IP address and then renew it. This is often used to resolve network issues or to get a new IP address from your DHCP server. It uses the 'ipconfig /release' and 'ipconfig /renew' commands.
echo.
echo 3. Change MAC Address: This option will change your MAC address. You will need to enter your Interface Name and the new MAC address you want to use. The new MAC address should be in the format XX-XX-XX-XX-XX-XX, where each X is a hexadecimal digit. It uses the 'netsh interface set interface' command.
echo.
echo 4. Help: Displays this help information.
echo.
echo 5. Exit: Exits the script.
echo.
pause
goto menu


:end
endlocal
