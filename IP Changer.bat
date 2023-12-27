TITLE IP Changer
@echo off
set /p UserInput=Are you sure you want to change your IP address? (yes/no): 
if /i "%UserInput%"=="yes" (
    echo Changing IP address...
    netsh interface ip set address name="Ethernet" static 192.168.42.42 255.255.255.0 192.168.42.1
    netsh interface ip set dnsservers "Ethernet" static 8.8.8.8 validate=no
    netsh interface ipv4 add dnsserver "Ethernet" address=8.8.4.4 index=2 validate=no
    echo IP address changed successfully.
) else (
    echo Exiting without changing IP address.
    exit
)
