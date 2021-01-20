#!/bin/sh

echo "_________________________"
echo "|  LAMP INSTALLER FOR:  |"
echo "|    Debian, Ubuntu,    |"
echo "|  Linux mint, deepin,  |​" 
echo "|  steamOs, MX Linux,   |"
echo "|  PureOs, Kali Linux,  |"
echo "|   Devuan, Knoppix,    |"
echo "|  Raspbian,   AntiX,   |"
echo "|        MORE...        |"
echo "-------------------------"
echo
while :
do
    echo
    echo "You want install LAMP your system? (y/n)"
    read install
    case $install in
        y)
            echo "Install LAMP..."

            sudo apt update
            sudo apt install apache2
            sudo apt install mysql-server
            sudo mysql_secure_installation
            sudo apt install php libapache2-mod-php php-mysql
            sudo systemctl restart apache2
            sudo apt install php-cli

            break
            ;;
        n)
            echo "Ok, bye ;)"
            break
            ;;
        *)
            echo "What? Decition incorrect."
            ;;
esac 
done
echo " "
echo "Thank use my programm ;)"
echo "My GitHub: https://github.com/joanutsu"