# NEW MAC/IP Utility

This is a simple batch script for Windows that provides a menu-driven interface for network-related tasks. It allows you to display your MAC and IP address, release and renew your IP address, and change your MAC address.

## Features

1. **Display MAC and IP Address**: This option will display your current MAC and IP address using the `ipconfig /all` command.

2. **Release and Renew IP Address**: This option will release your current IP address and then renew it using the `ipconfig /release` and `ipconfig /renew` commands. This is often used to resolve network issues or to get a new IP address from your DHCP server.

3. **Change MAC Address**: This option will change your MAC address. You will need to enter your Interface Name and the new MAC address you want to use. The new MAC address should be in the format XX-XX-XX-XX-XX-XX, where each X is a hexadecimal digit.

4. **Help**: This option will display a comprehensive understanding of each feature. I.E. Explaining what/where to find Interface name, Subnet mask, IP Address etc.

## Usage

To use the script, simply run it in a command prompt window. You will be presented with a menu of options. Enter the number of the option you want to use, and follow the prompts.

## Disclaimer

Please use this script responsibly. Changing your MAC address can have unintended side effects, and should only be done if you know what you are doing. Always make sure to have a backup of your original MAC address.
