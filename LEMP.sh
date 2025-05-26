# Install LEMP Stack on Amazon Linux 2

echo "Updating system..."
sudo yum update -y

echo "Installing Nginx, MariaDB, PHP..."
sudo amazon-linux-extras enable nginx1 php8.0 mariadb10.5 -y
sudo yum clean metadata
sudo yum install -y nginx php php-fpm php-mysqlnd mariadb-server

# Enable and start services
sudo systemctl enable nginx
sudo systemctl start nginx

sudo systemctl enable mariadb
sudo systemctl start mariadb

sudo systemctl enable php-fpm
sudo systemctl start php-fpm

echo "LEMP stack installed on Amazon Linux 2."
