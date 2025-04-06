
# Update Your System
`sudo apt update && sudo apt upgrade`

# Install Apache Web Server
`sudo apt install apache2`
`sudo systemctl enable apache2`
`sudo systemctl start apache2`

# Configure Apache Web Server
`nano /etc/apache2/sites-available/000-default.conf`
Change `DocumentRoot` to `/var/www/wordpress`
`sudo systemctl restart apache2`

