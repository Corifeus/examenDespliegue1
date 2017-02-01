sudo apt-get -y install git
cd /home

sudo cp /home/conf/creative1.com.conf /etc/apache2/sites-available/
sudo cp /home/conf/agency1.com.conf /etc/apache2/sites-available/

sudo git clone https://github.com/jmalberola/sitios-1617.git

sudo rm -rf /var/www/
sudo ln -s /home/sitios-1617/ /var/www

sudo a2dissite default
sudo a2ensite creative1.com.conf
sudo a2ensite agency1.com.conf

service apache2 reload