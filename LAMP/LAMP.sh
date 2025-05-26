echo "Updating system..."
sudo yum update -y

echo "Installing Apache, MariaDB, PHP..."
sudo amazon-linux-extras enable php8.0 mariadb10.5 -y
sudo yum clean metadata
sudo yum install -y httpd php php-mysqlnd mariadb-server

# Enable and start services
sudo systemctl enable httpd
sudo systemctl start httpd

sudo systemctl enable mariadb
sudo systemctl start mariadb

echo "LAMP stack installed on Amazon Linux 2."
