#!/bin/bash
clear

read -p "Your server ip: " ip
read -p "Your server username: " username
read -p "Your server ssh port: " port
read -p "Your ssh password: " ssh_pass
read -p "Your mysql password: " mysql_pass
read -p "Your mysql database name: " database

path_to_located="/home/$username/"
path_to_downloaded="/home/greg/Downloads/backup/"

file_name="backup_$(date +"%d-%m-%y").sql"

echo "Your database backup file is $file_name"

sshpass -p $ssh_pass ssh -t -p $port $username@$ip "mysqldump -u root -p$mysql_pass $database > $file_name"

echo "Your database has backuped in $file_name"

sshpass -p $ssh_pass scp -P $port $username@$ip:$path_to_located$file_name $path_to_downloaded

echo "Your $file_name has dowloaded"

sshpass -p $ssh_pass ssh -t -p $port $username@$ip "rm $path_to_located$file_name"

echo "Your $file_name has deleted"
