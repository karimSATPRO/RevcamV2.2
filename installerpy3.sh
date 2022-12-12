echo "############### REVTEAM #################"
echo "############ OTEX #################"
#!/bin/sh
#

wget -O /usr/bin/RevCam https://github.com/karimSATPRO/Revcamemu/blob/main/RevCam?raw=true

wget -O /etc/init.d/softcam.RevCam https://github.com/karimSATPRO/Revcamemu/blob/main/softcam.RevCam

echo ""
cd ..
sync
echo "############ INSTALLATION COMPLETED ########"
echo "############ RESTARTING... #################" 
init 4
sleep 2
init 3
exit 0
