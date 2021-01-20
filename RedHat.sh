#!/bin/sh

echo "_________________________"
echo "|  LAMP INSTALLER FOR:  |"
echo "|   Red Hat, Mandriva,  |"
echo "|    Fedora, Mageia,    |​" 
echo "|  PCLinuxOs, OpenSUSE, |"
echo "|      Suse Linux,      |"
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

            sudo yum update
            sudo yum -y install httpd mariadb-server
            sudo systemctl enable --now mariadb httpd
            sudo yum install -y php-fpm php-cli php-mysqlnd
            sudo systemctl enable --now php-fpm
            sudo systemctl reload httpd
            

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