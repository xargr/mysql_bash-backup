# Backup your remote mysql/mariadb database 

Why you need this?

* simplify process
* before push major changes
* you code it's under git and you have to work only database backup

You need before run this script install sshpass
For Ubuntu:
```
sudo apt-get install sshpass
```

Download script and give it execute permissions
```
sudo chmod a+x backup.sh
```

you're only one step far
```
./backup.sh
```
