# NEW MAC/IP Utility

This is a simple batch script for Windows that provides a menu-driven interface for network-related tasks. It allows you to display your MAC and IP address, release and renew your IP address, and change your MAC address.

## Features

1. **Display MAC and IP Address**: This option will display your current MAC and IP address using the 'ipconfig /all' command.

2. **Release and Renew IP Address**: This option will release your current IP address and then renew it. This is often used to resolve network issues or to get a new IP address from your DHCP server. It uses the 'ipconfig /release' and 'ipconfig /renew' commands.

3. **Change MAC Address**: This option will change your MAC address. You will need to enter your Interface Name and the new MAC address you want to use. The new MAC address should be in the format XX-XX-XX-XX-XX-XX, where each X is a hexadecimal digit. It uses the 'netsh interface set interface' command.

4. **Help**: This option will display a comprehensive breakdown of the features provided in the code. It includes detailed explanations of each option and the commands they use.
```batch
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
```

## Usage

To use the script, simply run it in a command prompt window. You will be presented with a menu of options. Enter the number of the option you want to use, and follow the prompts.

## Disclaimer

Please use this script responsibly. Changing your MAC address can have unintended side effects, and should only be done if you know what you are doing. Always make sure to have a backup of your original MAC address.
