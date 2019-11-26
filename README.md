# iocage-plugin-nzbget

## Post install steps
### Stop the services
```
iocage exec jail_name "service nzbget stop"
```
### Add mount points
```
iocage fstab -a jail_name /mnt/pool-1/apps/nzbget/downloads /usr/local/nzbget/downloads nullfs rw 0 0
iocage fstab -a jail_name /mnt/pool-1/apps/nzbget/scripts /usr/local/nzbget/scripts nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/usr/local/nzbget/config
iocage fstab -a jail_name /mnt/pool-1/apps/nzbget/config /usr/local/nzbget/config nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/downloads
iocage fstab -a jail_name /mnt/pool-1/downloads /downloads nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/movies
iocage fstab -a jail_name /mnt/pool-1/multimedia/movies /movies nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/music
iocage fstab -a jail_name /mnt/pool-1/multimedia/music /music nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/tvshows
iocage fstab -a jail_name /mnt/pool-1/multimedia/tvshows /tvshows nullfs rw 0 0
```
### Start the services
```
iocage exec jail_name "service nzbget start"
```
