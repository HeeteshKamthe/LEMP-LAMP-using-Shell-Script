echo "Updating system..."
sudo yum update -y

echo "Installing Apache, MariaDB, PHP..."

sudo yum install -y httpd php php-mysqlnd mariadb105-server

# Enable and start services
sudo systemctl enable httpd
sudo systemctl start httpd

sudo systemctl enable mariadb
sudo systemctl start mariadb

echo "LAMP stack installed on Amazon Linux 2."
