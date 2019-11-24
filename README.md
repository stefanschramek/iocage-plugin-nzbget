# iocage-plugin-nzbget

## Post install steps
### Mount storage for persistence
```
mkdir /mnt/pool-1/iocage/jails/nzbget/root/config
iocage fstab -a nzbget /mnt/pool-1/apps/nzbget /config nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/nzbget/root/downloads
iocage fstab -a nzbget /mnt/pool-1/downloads /downloads nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/nzbget/root/movies
iocage fstab -a nzbget /mnt/pool-1/multimedia/movies /movies nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/nzbget/root/music
iocage fstab -a nzbget /mnt/pool-1/multimedia/music /music nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/nzbget/root/tvshows
iocage fstab -a nzbget /mnt/pool-1/multimedia/tvshows /tvshows nullfs rw 0 0
```
