echo "##############################################"
écho "#############################################" 
echo "##############################################"
echo "############ KEYADDER[Bissfeed] #################"

wget -O /tmp/enigma2-plugin-softcams-revcam_2.0_all.ipk "https://github.com/karimSATPRO/RevcamV2.2/blob/main/enigma2-plugin-softcams-revcam_2.0_all.ipk?raw=true"

opkg install --force-overwrite /tmp/*.ipk

echo ""
cd ..
sync
echo "############ Installation Successful  ########"
echo "############ Restart Enigma2 GUI... #################" 
init 4
sleep 2
init 3
exit 0
