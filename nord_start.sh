#!/bin/bash
nordvpn connect Italy
sudo mount -t nfs banas:/media/FILM/NAS /mnt/shared
echo "NAS mounted successfully"
rsync -rvpP $HOME/Immagini/wallpapers /mnt/shared/Images/
echo "Backup of local wallpapers done"
rsync -rvpP /mnt/shared/Images/wallpapers $HOME/Immagini/
echo "Syncing remote wallpapers done"
