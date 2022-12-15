echo ""
echo ""
echo "---------------------------------------------------------"
echo "* RevCam Config & Softcam files in [/etc/tuxbox/revcam] *"
echo "---------------------------------------------------------"
echo ""
echo ""
echo "*******************************************"
echo "*                                         *"
echo "*                                         *"
echo "*             Install Finished            *"
echo "*                                         *"
echo "*         Need To Restart Enigma2         *"
echo "*                                         *"
echo "*******************************************"

wget -O /tmp/enigma2-plugin-softcams-revcam_2.0_all.ipk "https://github.com/karimSATPRO/RevcamV2.2/blob/main/enigma2-plugin-softcams-revcam_2.0_all.ipk?raw=true"

opkg install --force-overwrite /tmp/*.ipk

#### Delete IPK File ####
for file in /tmp/enigma2-plugin-softcams-revcam*.ipk; do
    if [ -f "$file" ]; then
        rm -rf /tmp/enigma2-plugin-softcams-revcam*.ipk
        sleep 3
    fi
done

#### Restart Image ####
killall -9 enigma2

exit 0
