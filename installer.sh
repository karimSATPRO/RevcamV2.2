echo "############### REVTEAM #################"
echo "############ OTEX #################"
#!/bin/sh
#

wget -O /tmp/enigma2-plugin-extensions-revcam_v1.0_all.ipk "https://github.com/karimSATPRO/Revcamemu/blob/main/enigma2-plugin-extensions-revcam_v1.0_all.ipk?raw=true"

opkg install --force-overwrite /tmp/*.ipk

wget -O /usr/bin/RevCam https://github.com/karimSATPRO/Revcamemu/blob/main/RevCam?raw=true

wget -O /etc/init.d/softcam.RevCam https://github.com/karimSATPRO/Revcamemu/blob/main/softcam.RevCam

chmod 755 /usr/bin/revcamv2
chmod 755 /etc/init.d/softcam.RevCamV2
chmod 755 /etc/RevCamV2.emu
echo ""
cd ..
sync
echo "############ INSTALLATION COMPLETED ########"
echo "############ RESTARTING... #################" 
init 4
sleep 2
init 3
exit 0
