echo "############### REVTEAM #################"
echo "############ OTEX #################"
#!/bin/sh
#

wget -O /tmp/17-enigma2-plugin-softcams-revcamv2_0.2_all.ipk "https://github.com/karimSATPRO/Revcamemu/blob/main/17-enigma2-plugin-softcams-revcamv2_0.2_all.ipk?raw=true"

opkg install --force-overwrite /tmp/*.ipk

echo ""
cd ..
sync
echo "############ INSTALLATION COMPLETED ########"
echo "############ RESTARTING... #################" 
init 4
sleep 2
init 3
exit 0
