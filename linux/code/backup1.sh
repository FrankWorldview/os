#!/bin/bash

if [ "$1" == "backup" ]; then
	tar -czf "backup_$(date +%Y%m%d).tar.gz" "$2"
	echo "Backup created: backup_$(date +%Y%m%d).tar.gz"
elif [ "$1" == "restore" ]; then
	tar -xzf "$2" -C "$3"
	echo "Backup restored to $3"
else
	echo "Usage: $0 backup <directory> | restore <backup_file> <destination>"
fi

# tar -czf creates a compressed backup.
# tar -xzf extracts the backup to a chosen directory.
