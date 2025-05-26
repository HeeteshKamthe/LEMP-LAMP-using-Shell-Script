# Install LEMP Stack on Amazon Linux 2

echo "Updating system..."
sudo yum update -y

echo "Installing Nginx, MariaDB, PHP..."
sudo yum install -y nginx php php-fpm php-mysqlnd mariadb105-server

# Enable and start services
sudo systemctl enable nginx
sudo systemctl start nginx

sudo systemctl enable mariadb
sudo systemctl start mariadb

sudo systemctl enable php-fpm
sudo systemctl start php-fpm

echo "LEMP stack installed on Amazon Linux 2."
