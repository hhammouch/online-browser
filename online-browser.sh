#!/bin/bash

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White


#######################################################


echo -ne '\033c'
trap RM_HT_FOLDER SIGINT SIGQUIT SIGTSTP
echo ""
sleep 0.1
echo -e "${Cyan}    +${Yellow}--------------------------------------------------------------------------------------------------------------------------${Cyan}+"
sleep 0.1
echo -e "${Yellow}     |                                                                                                                        |"
sleep 0.1
echo -e "     |${Green}     ██████╗ ███╗   ██╗██╗     ██╗███╗   ██╗███████╗    ${Red}██████${Black}╗${Red} ██████${Black}╗${Red}  ██████${Black}╗${Red} ██${Black}╗${Red}    ██${Black}╗${Red}███████${Black}╗${Red}███████${Black}╗${Red}██████${Black}╗  ${Yellow}    |"
sleep 0.1
echo -e "     |${Green}    ██╔═══██╗████╗  ██║██║     ██║████╗  ██║██╔════╝    ${Red}██${Black}╔══${Red}██${Black}╗${Red}██${Black}╔══${Red}██${Black}╗${Red}██${Black}╔═══${Red}██${Black}╗${Red}██${Black}║${Red}    ██${Black}║${Red}██${Black}╔════╝${Red}██${Black}╔════╝${Red}██${Black}╔══${Red}██${Black}╗${Red}    ${Yellow} |"
sleep 0.1
echo -e "     |${Green}    ██║   ██║██╔██╗ ██║██║     ██║██╔██╗ ██║█████╗      ${Red}██████${Black}╔╝${Red}██████${Black}╔╝${Red}██${Black}║   ${Red}██${Black}║${Red}██${Black}║ ${Red}█${Black}╗ ${Red}██${Black}║${Red}███████${Black}╗${Red}█████${Black}╗  ${Red}██████${Black}╔╝    ${Yellow} |"
sleep 0.1
echo -e "     |${BGreen}    ██║   ██║██║╚██╗██║██║     ██║██║╚██╗██║██╔══╝      ${BRed}██${Black}╔══${BRed}██${Black}╗${BRed}██${Black}╔══${BRed}██${Black}╗${BRed}██${Black}║   ${Red}██${Black}║${BRed}██${Black}║${BRed}███${Black}╗${BRed}██${Black}║╚════${BRed}██${Black}║${BRed}██${Black}╔══╝  ${BRed}██${Black}╔══${BRed}██${Black}╗    ${Yellow} |"
sleep 0.1
echo -e "     |${BGreen}    ╚██████╔╝██║ ╚████║███████╗██║██║ ╚████║███████╗    ${BRed}██████${Black}╔╝${BRed}██${Black}║${BRed}  ██${Black}║╚${BRed}██████${Black}╔╝╚${BRed}███${Black}╔${BRed}███${Black}╔╝${BRed}███████${Black}║${BRed}███████${Black}╗${BRed}██${Black}║  ${BRed}██${Black}║    ${Yellow} |"
sleep 0.1
echo -e "     |${Green}     ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝    ${Black}╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝ ╚══════╝╚══════╝╚═╝  ╚═╝ ${Yellow}    |"
sleep 0.1
echo -e "     |                                                                                                               ${BCyan} BETA${Yellow}    |"
sleep 0.1
echo -e "     |                                                                                                                        |"
sleep 0.1
echo -e "${Cyan}    +${Yellow}--------------------------------------------------------------------------------------------------------------------------${Cyan}+${Yellow}"
sleep 0.1
echo -e "                                     |${BRed} Online Browser ${BYellow}by${BGreen} Hamza Hammouch${Cyan} powerd by${BPurple} linuxserver${Yellow} |"
sleep 0.1
echo -e "                                     ${Cyan}+${Yellow}--------------------------------------------------------${Cyan}+"
sleep 0.1

#######################################################


echo -e "${Yellow}     +${White}-------------------------------------------------------------------${Yellow}+"
echo -e "${White}     | ${Yellow} ID ${White} |                   ${BPurple}   Browser Name                       ${White}   |"
echo -e "${Yellow}     +${White}-------------------------------------------------------------------${Yellow}+"
echo -e "${White}     | ${Red}[${Yellow}01${Red}]${White} |$Green Install Chromium${White}                                           |"
echo -e "${White}     | ${Red}[${Yellow}02${Red}]${White} |$Green Install Firefox${White}                                            |"
echo -e "${White}     | ${Red}[${Yellow}03${Red}]${White} |$Green Install Opera${White}                                              |"
echo -e "${White}     | ${Red}[${Yellow}04${Red}]${White} |$Green Install Mullvad Browser${White}                                    |"
echo -e "${Yellow}     +${White}-------------------------------------------------------------------${Yellow}+"
echo ""
echo -e -n "$White    ${Red} [${Cyan}!Note:${Red}]$White If your choice is Chromium type $Green 1${White} not ${Red}01$White and the same principle applies to other browsers "
echo ""
echo ""
echo -e -n "$White    ${Red} [${Cyan}!${Red}]$White Type the$BRed ID$White "
read -p "of your choice : " choice
case $choice in
    1)
        echo "Installing Chromium..."
        docker run -d \
            --name=chromium \
            --security-opt seccomp=unconfined \
            -e PUID=1000 \
            -e PGID=1000 \
            -e TZ=Etc/UTC \
            -p 3000:3000 \
            -p 3001:3001 \
            -v /path/to/config:/config \
            --shm-size="7gb" \
            --restart unless-stopped \
            ghcr.io/linuxserver/chromium:latest
        ;;
    2)
        echo "Installing Firefox..."
        docker run -d \
            --name=firefox \
            --security-opt seccomp=unconfined \
            -e PUID=1000 \
            -e PGID=1000 \
            -e TZ=Etc/UTC \
            -p 3000:3000 \
            -p 3001:3001 \
            -v /path/to/config:/config \
            --shm-size="7gb" \
            --restart unless-stopped \
            ghcr.io/linuxserver/firefox:latest
        ;;
    3)
        echo "Installing Opera..."
        docker run -d \
            --name=opera \
            --security-opt seccomp=unconfined \
            -e PUID=1000 \
            -e PGID=1000 \
            -e TZ=Etc/UTC \
            -p 3000:3000 \
            -p 3001:3001 \
            -v /path/to/config:/config \
            --shm-size="7gb" \
            --restart unless-stopped \
            ghcr.io/linuxserver/opera:latest
        ;;
    4)
        echo "Installing Mullvad Browser..."
        docker run -d \
            --name=mullvad-browser \
            --security-opt seccomp=unconfined \
            -e PUID=1000 \
            -e PGID=1000 \
            -e TZ=Etc/UTC \
            -p 3000:3000 \
            -p 3001:3001 \
            -v /path/to/config:/config \
            --shm-size="7gb" \
            --restart unless-stopped \
            ghcr.io/linuxserver/mullvad-browser:latest
        ;;
    *)
        echo "Invalid choice. Please enter 1, 2, 3, or 4."
        exit 1
        ;;
esac

#######################################################

clear
echo ""
sleep 0.1
echo -e -n "$White    ${Red} [${Green} ✔ ${Red}]$White Browser installation completed successfully ( •̀ ω •́ )✧"
sleep 0.1
echo ""
sleep 0.1
echo ""
sleep 0.1
echo -e "    ${Red} ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${Blue}⢀⣠⣴⣾⣿⣿⣿⣶⣄⡀⠀"
sleep 0.1
echo -e "    ${Red} ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${Blue}⣀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄"
sleep 0.1
echo -e "    ${Red} ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${Blue}⢀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷"
sleep 0.1
echo -e "    ${Red} ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤${Blue}⠾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠉⠙⣿⣿⡿"
sleep 0.1
echo -e "    ${Red} ⠀⠀⠀⠀⠀⢀⣠⠶⠛⠁⠀⠀${Blue}⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣄⣠⣿⡿⠁"
sleep 0.1
echo -e "    ${Red} ⠀⠀⣀⡤⠞⠉⠀⠀⠀⠀⠀⠀${Blue}⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠀⠀"
sleep 0.1
echo -e "    ${Red} ⢀⡾⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${Blue}⠙⢿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠀⠀⠀⠀⠀"
sleep 0.1
echo -e "    ${Red} ⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⡀${Blue}⠙⢿⣿⡿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀"
sleep 0.1
echo -e "    ${Red} ⣿⠀⠀⠀⠀⠀⠀⠀⣠⣴⣾⡿⠟⢋⣤⠶⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
sleep 0.1
echo -e "    ${Red} ⠘⣧⡀⠀⢰⣿⣶⣿⠿⠛⣩⡴⠞⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
sleep 0.1
echo -e "    ${Red} ⠀⠈⠛⠦⣤⣤⣤⡤⠖⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
sleep 0.1
echo -e "    ${White}"
sleep 0.1
echo ""
