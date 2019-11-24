# iocage-plugin-nzbget

## Post install steps
### Mount storage for persistence
```
iocage fstab -a jail_name /mnt/pool-1/apps/nzbget /config nullfs rw 0 0
iocage fstab -a jail_name /mnt/pool-1/downloads /downloads nullfs rw 0 0
iocage fstab -a jail_name /mnt/pool-1/multimedia/movies /movies nullfs rw 0 0
iocage fstab -a jail_name /mnt/pool-1/multimedia/music /music nullfs rw 0 0
iocage fstab -a jail_name /mnt/pool-1/multimedia/tvshows /tvshows nullfs rw 0 0
```
