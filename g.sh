#!/bin/bash
#screetsec@dracos-linux.org


VERSION='1.1.1'
CODENAME='Pretty'
dir='pwd'


#This colour
cyan='\e[0;36m'
green='\e[1;32m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'

#Accurate method to detect user Distro
lnx="Linux"
lsb_release -i > temp/distro.tmp
lsb_release -c > temp/codename.tmp
rlname=`awk '{print $2}' temp/codename.tmp`
dist=`awk '{print $3}' temp/distro.tmp`
dist1=`awk '{print $4}' temp/distro.tmp`
rm -f temp/codename.tmp >/dev/null
rm -f temp/distro.tmp >/dev/null
if [ "$dist" == "$lnx" ];
then
dist0=$dist1
else
dist0=$dist
fi
OS=`uname` #
distro=$dist0
disrov=$rlname


cont () {
# check medusa
      which /usr/bin/medusa > /dev/null 2>&1
      if [ "$?" -eq "0" ]; then
      echo -e $okegreen [✔]::[Medusa: Installation found!;
else
   echo -e $red [x]::[warning]:this script require medusa installed to work ;
   echo ""
   echo -e $red [!]::Please Install medusa to work ;
   sleep 0.5
   exit 1
 fi
sleep 0.5


# check crunch
      which tools/crunch-3.6/crunch > /dev/null 2>&1
      if [ "$?" -eq "0" ]; then
      echo -e $okegreen [✔]::[Crunch]: Installation found!;

else

   echo -e $red [x]::[warning]:this script require crunch installed to work ;
   echo ""
   echo -e $red [!]::check the folder tools crunch ;
   echo ""
   sleep 0.5
   exit 1
fi
sleep 0.5

# check cewl
      which /usr/bin/cewl > /dev/null 2>&1
      if [ "$?" -eq "0" ]; then
      echo -e $okegreen [✔]::[Cewl]: Installation found!;

else

   echo -e $red [x]::[warning]:this script require cewl installed to work ;
   echo ""
   echo -e $red [!]::Please install cewl to work ;
   echo ""
   sleep 0.5
   exit 1
fi
sleep 0.5

# check fcrackzip
      which /usr/bin/fcrackzip > /dev/null 2>&1
      if [ "$?" -eq "0" ]; then
      echo -e $okegreen [✔]::[fcrackzip]: Installation found!;
else

   echo -e $red [x]::[warning]:this script require fcrackzip installed to work ;
   echo ""
   echo -e $red [!]::Please install fcrackzip to work properly ;
   echo ""
   sleep 0.5
   exit 1
fi
sleep 0.5

# check dirsearch
      which tools/dirsearch/dirsearch.py > /dev/null 2>&1
      if [ "$?" -eq "0" ]; then
      echo -e $okegreen [✔]::[dirsearch]: Installation found!;
else

   echo -e $red [x]::[warning]:this script require dirsearch installed to work ;
   echo ""
   echo -e $red [!]::Please install dirsearch to work properly ;
   echo ""
   sleep 0.5
   exit 1
fi
sleep 0.5

}


function chknet() {
echo -e $red "[X] Your Internet is not working correctly!"
sleep 0.5
echo -e $okegreen "[*] Checking ...."
ping -c 1 8.8.4.4 > /dev/null 2>&1
png="$?"
 if [ $png == "0" ]
then
    echo -e $red "[X] Your linux OS is not able to resolve"
    echo -e $red "hostnames over terminal using ping !!"
    echo ""
    echo -e $yellow "Search on the web : (unable to resolve hostnames ping) to find a solution"
echo ""
echo -e $okegreen "BrutSploit will continue , but some of its functions may not work properly."
echo ""
echo -e $okegreen "Press [ENTER] key to continue"
read continue
cont
    sleep 0.5
elif [ $png == "1" ]
then
    echo -e $yellow "You are connected to your local network but not to the web ."
    echo -e $yellow "Check if your router/modem gateway is connected to the web ."
echo ""
echo -e $okegreen "BrutSploit will continue , but some of its functions may not work properly."
echo ""
echo -e $okegreen "Press [ENTER] key to continue"
read continue
cont
sleep 0.5
elif [ $png == "2" ]
then
echo -e $red "You are not connected to any network ."
echo ""
echo -e $okegreen "BrutSploit will continue , but many of its functions will not work properly."
echo ""
echo -e $okegreen "Press [ENTER] key to continue"
read continue
cont
    sleep 0.5
fi
}

#########################
#CHECK DEPENDICIES
#########################
clear
echo -e $red"   _____         _       _____     _     _ _    "
echo "  | __  |___ _ _| |_ ___|   __|___| |___|_| |_ "
echo "  | __ -|  _| | |  _| -_|__   | - | | - | |  _| "
echo "  |_____|_| |___|_| |___|_____|  _|_|___|_|_| "
echo "                              |_|             "
echo -e $lightgreen'-- -- +=[(c) cuma depis | i love you depis | Pusing | Mumet cok '
echo -e $cyan'-- -- +=[ Author: hamba allah < paling seksih >  ]=+ -- -- '
echo -e " "

   	sleep 1
	  
###################################################
# CTRL + C
###################################################
trap ctrl_c INT
ctrl_c() {
clear
clear
sleep 1
exit
}


lagi=1
while [ $lagi -lt 6 ];
do
echo ""
echo -e $b "1. Pasword TXT${enda}";
echo -e $b "2. Proxy TXT${enda}";
echo -e $b "3. SIKAT BANGSAT${enda}";
echo -e $b "00. Exit${enda}";
read -p "Pilih Nomernya =>" pil;

case $pil in
1) nano abc.txt
echo

;;
2) nano abcd.txt
echo

;;
3) python2 gg.py

;;

00) exit
;;

*) echo "Pilih Sesuai List Anjenk"
esac
done
done
