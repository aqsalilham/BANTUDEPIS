#!/bin/bash
#version 1.0

clear



#########################
#CHECK DEPENDICIES
#########################
clear
echo -e $red"   _____         _       _____     _     _ _    "
echo "  | __  |___ _ _| |_ ___|   __|___| |___|_| |_ "
echo "  | __ -|  _| | |  _| -_|__   | - | | - | |  _| "
echo "  |_____|_| |___|_| |___|_____|  _|_|___|_|_| "
echo "                              |_|             "
echo -e $lightgreen'-- -- +=[(c) cuma depis | LOVE YOU DEPIS | JANCOK MUMET | ASUU PINGIN NANGIS'
echo -e $cyan'-- -- +=[ Author: HAMBA ALLAH < YANG PALING SEKSIH >  ]=+ -- -- '
echo -e " "


	  exit
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
echo -e $b "3. SIKAT ANJENG${enda}";
echo -e $b "00. Exit${enda}";
read -p "Pilih Nomernya =>" pil;

case $pil in
1) txr abc.txt
echo

;;
2) txr abcd.txt
echo

;;
3) python2 init.py

;;

00) exit
;;

*) echo "BANGSAT ANJENG"
esac
done
done
