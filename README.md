# Backup your remote mysql/mariadb database 

Why you need this?

* simplify process
* before push major changes
* your code is under git and you need something for database backup

You need before run this script install sshpass
For Ubuntu:
```
sudo apt-get install sshpass
```

Download script and give it executable permissions
```
sudo chmod a+x backup.sh
```

you're only one step far
```
./backup.sh
```
