# Practical Project: Understanding OS Services in Action: Deploying a Local WordPress Server on Ubuntu

## Objective
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
  - `sudo apt install apache2`
  - `sudo systemctl enable apache2` # Optional
  - `sudo systemctl start apache2`

### Configure Apache Web Server
  - `sudo nano /etc/apache2/sites-available/000-default.conf` and change `DocumentRoot` to `/var/www/wordpress`
  - `sudo systemctl restart apache2`
  - Open a browser and visit: `http://localhost`
