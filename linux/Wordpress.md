# Practical Project: Understanding OS Services in Action: Deploying a Local WordPress Server on Ubuntu

## Objectives
In this practical project, you will manually deploy a WordPress website on Ubuntu using the LAMP stack (Linux, Apache, MySQL, PHP). This exercise focuses on how operating systems manage services, processes, users, and file permissions in a real-world web application environment.

By the end of this project, you will understand:
- How Linux manages system services with systemctl
- Proper use of file ownership and permissions
- Interactions between web, database, and scripting services
- The role of configuration files, modules, and network ports

## Step-by-Step Setup Instructions
### Update Your System
- `sudo apt update && sudo apt upgrade -y`

### Install Apache Web Server
- `sudo apt install apache2 -y`
- `sudo systemctl enable apache2` # Optional
- `sudo systemctl start apache2`

### Configure Apache Web Server
- `sudo nano /etc/apache2/sites-available/000-default.conf` and change `DocumentRoot` to `/var/www/wordpress`
- `sudo mkdir /var/www/wordpress`
- Restart Apache: `sudo systemctl restart apache2`
- Open a browser and visit: `http://localhost`

### Install MySQL Server
- `sudo apt install mysql-server -y`
- `sudo systemctl enable mysql` # Optional
- `sudo systemctl start mysql`

### Create a MySQL Database and a User for WordPress
- Log into MySQL:`sudo mysql`
- Inside the MySQL prompt, run:
- `CREATE USER 'wpadmin'@'localhost' IDENTIFIED WITH mysql_native_password BY 'your_password';`
- `CREATE DATABASE wordpress_db;`
- `GRANT ALL PRIVILEGES ON wordpress_db.* TO 'wpadmin'@'localhost';`
- `FLUSH PRIVILEGES;`
- `EXIT;`

### Install PHP and Required Extensions
- `sudo apt install php php-mysql libapache2-mod-php php-cli php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip unzip -y`
- Restart Apache: `sudo systemctl restart apache2`

### Download and Extract WordPress
- `cd /tmp`
- `wget https://wordpress.org/latest.tar.gz`
- `tar -xvzf latest.tar.gz`

### Copy WordPress Files
- `sudo cp -r wordpress/. /var/www/wordpress/`

### Set Permissions and Ownership
- `sudo chmod 755 /var/www/wordpress`
- `sudo chown -R www-data:www-data /var/www/wordpress`
- `rm -rf /tmp/wordpress`

### Configure WordPress

