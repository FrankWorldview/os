#!/bin/bash

echo "*** Backup & Restore Utility ***"
echo "Select an option:"
echo "1) Backup"
echo "2) Restore"
read -p "Enter choice (1 or 2): " choice

if [ "$choice" == "1" ]; then
	read -p "Enter the directory to backup: " dir
	if [ ! -d "$dir" ]; then
		echo "Error: Directory does not exist."
		exit 1
	fi
	backup_file="backup_$(date +%Y%m%d).tar.gz"
	tar -czf "$backup_file" "$dir"
	echo "Backup created: $backup_file"
elif [ "$choice" == "2" ]; then
	read -p "Enter the backup file to restore: " backup_file
	read -p "Enter the destination directory: " dest_dir
	if [ ! -f "$backup_file" ]; then
		echo "Error: Backup file does not exist."
		exit 1
	fi
	mkdir -p "$dest_dir"
	tar -xzf "$backup_file" -C "$dest_dir"
	echo "Backup restored to $dest_dir"
else
	echo "Invalid choice. Exiting."
	exit 1
fi
