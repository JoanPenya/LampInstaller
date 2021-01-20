#!/bin/sh

echo "_________________________"
echo "|  LAMP INSTALLER FOR:  |"
echo "|  Arch linux, Manjaro, |"
echo "| Parabola, Frugalware2 |​" 
echo "|      AND Chakra       |"
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

            sudo pacman -Syu
            sudo pacman -S apache
            sudo systemctl restart httpd
            sudo pacman -S mysql 
            sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
            sudo systemctl enable mysqld
            sudo systemctl start mysqld.service
            sudo mysql_secure_installation
            sudo pacman -S php php-apache 
            

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