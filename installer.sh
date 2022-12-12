echo "############### REVTEAM #################"
echo "############ OTEX #################"
#!/bin/sh
#

wget -O /usr/bin/RevCam "https://github.com/karimSATPRO/Revcamemu/blob/main/RevCam?raw=true"

Wait

chmod 755 /usr/bin/revcamv2

Wait

wget -O /etc/init.d/softcam.RevCamV2 "https://raw.githubusercontent.com/karimSATPRO/Revcamemu/main/softcam.RevCamV2"

Wait

chmod 755 /etc/init.d/softcam.RevCamV2

Wait

echo ""
cd ..
sync
echo "############ INSTALLATION COMPLETED ########"
echo "############ RESTARTING... #################" 
init 4
sleep 2
init 3
exit 0
