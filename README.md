# iocage-plugin-nzbget

## Post install steps
### Mount storage for persistence
```
mkdir /mnt/pool-1/iocage/jails/jail_name/root/config
iocage fstab -a jail_name /mnt/pool-1/apps/nzbget /config nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/downloads
iocage fstab -a jail_name /mnt/pool-1/downloads /downloads nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/movies
iocage fstab -a jail_name /mnt/pool-1/multimedia/movies /movies nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/music
iocage fstab -a jail_name /mnt/pool-1/multimedia/music /music nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/tvshows
iocage fstab -a jail_name /mnt/pool-1/multimedia/tvshows /tvshows nullfs rw 0 0
```
