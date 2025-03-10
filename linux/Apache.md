# Apache HTTP Server
sudo apt install apache2    # Install Apache
sudo systemctl start apache2    # Start Apache service
sudo systemctl enable apache2    # Enable Apache on boot
sudo systemctl status apache2    # Check Apache Status
sudo systemctl restart apache2    # Restart Apache
sudo systemctl stop apache2    # Stop Apache

/etc/apache2/apache2.conf    # Apache's main config file
/etc/apache2/sites-available/000-default.conf    # Apache's default site configuration
/var/www/html # Apache's default root directory

# Use Per-User Directories
sudo a2enmod userdir
sudo systemctl restart apache2
chmod o+x <user_html_directory>
