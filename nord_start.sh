#!/bin/bash
nordvpn connect Italy
sudo mount -t nfs banas:/media/FILM/NAS /mnt/shared
echo "NAS mounted successfully"
rsync -rvp $HOME/Immagini/wallpapers /mnt/shared/Images/ --append-verify --progress
echo "Backup of local wallpapers done"
rsync -rvp /mnt/shared/Images/wallpapers $HOME/Immagini/ --append-verify --progress
echo "Syncing remote wallpapers done"
