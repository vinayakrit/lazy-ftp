#!/bin/sh
# Author : Vinayak Patil
sol="yes"
BLUE='\033[0;34m'
Yellow='\033[1;33m'
cyan='\033[0;36m'
green='\033[0;32m'
red='\033[0;31m'
NC='\033[0m' # No Color

echo "${green}


	██╗░░░░░░█████╗░███████╗██╗░░░██╗░░░░░░███████╗████████╗██████╗░
	██║░░░░░██╔══██╗╚════██║╚██╗░██╔╝░░░░░░██╔════╝╚══██╔══╝██╔══██╗
	██║░░░░░███████║░░███╔═╝░╚████╔╝░█████╗█████╗░░░░░██║░░░██████╔╝
	██║░░░░░██╔══██║██╔══╝░░░░╚██╔╝░░╚════╝██╔══╝░░░░░██║░░░██╔═══╝░
	███████╗██║░░██║███████╗░░░██║░░░░░░░░░██║░░░░░░░░██║░░░██║░░░░░
	╚══════╝╚═╝░░╚═╝╚══════╝░░░╚═╝░░░░░░░░░╚═╝░░░░░░░░╚═╝░░░╚═╝░░░░░


Created by

${red}

	              mm                                                                 mm         
	              @@                                           *@@@                  @@    @@   
	                                                             @@                        @@   
	*@@*   *@@* *@@@  *@@@@@@@@m   m@*@@m  *@@*   *@@* m@*@@m    @@  m@@* *@@@m@@@ *@@@  @@@@@@ 
	  @@   m@     @@    @@    @@  @@   @@    @@   m@  @@   @@    @@ m@      @@* **   @@    @@   
	   @@ m@      !@    @!    @@   m@@@!@     @@ m!    m@@@!@    !@m@@      @!       !@    @@   
	    !@@       !@    @!    !@  @!   !@      @@!    @!   !@    !@ *@@m    @!       !@    @!   
	    !@!       !!    !!    !!   !!!!:!      @!!     !!!!:!    !!!!!      !!       !!    !!   
	    !!!       !!    !!    !!  !!   :!      !!:    !!   :!    :! *!!!    !:       !!    !!   
	     :      : : : : :::  :!: ::!: : !:     !!     :!: : !: : : :  : : : :::    : : :   ::: :
	                                         ::!                                                
	                                       :::                                                  
${green}

 				Author : Vinayak Patil
				For any query mail me on                vinayakrit@gmail.com
				Follow me on Linkedin                   https://www.linkedin.com/in/sahebrao/
				Tool is published on GITHUB on user     https://github.com/vinayakrit




 	 Lazy-FTP automatically configure FTP server on device.
"



echo "${NC}what is your name? ${Yellow}"

read name
echo "${NC}"
echo "What is your ip,  ${Yellow} $name?"
read ip
echo "your ip ${Yellow} $ip "

echo "${cyan}"
sudo apt-get install vsftpd	   # first_command  to install vsftd
sudo systemctl start vsftpd        # second_command  to start vsftd 
echo "\n"
echo "\n"
echo "\n"

sudo systemctl enable vsftpd	   # third_command to enable vsftd

 #sudo ufw status	   # fourth_command to check ufw status

sudo ufw allow 20/tcp	   # fifth
echo "\n"

sudo ufw allow 21/tcp	    # sixth
echo "\n"
echo "\n"

sudo cp /etc/vsftpd.conf /etc/vsftpd.conf.orig1      # seventh

sudo gedit /etc/vsftpd.conf

sudo systemctl restart vsftpd	    # eighth

echo $name | sudo tee -a /etc/vsftpd.userlist  # ningth


first () {
gnome-terminal --  ftp $ip
 }  

wait
second () {
echo "${NC}do you want make it default (yes/no)  ${Yellow}" 
read ans

echo "${cyan}"
if [ $sol = $ans ]
then
sudo systemctl stop vsftpd
sudo systemctl disable vsftpd
echo "\n"
echo "\n"
sudo ufw deny 20/tcp
echo "\n"

sudo ufw deny 21/tcp

echo "\n"
echo "\n"

echo " ${BLUE} we just closed all service & make it default as it was before exicuting this code"


else 
echo "service not closed"

fi
}

first 

 second

