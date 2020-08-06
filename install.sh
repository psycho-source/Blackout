#!/usr/bin/env bash

RED='\033[0;31m'
GREEN='\033[0;32m'
STD='\033[0m'

banner() {
    clear
    echo -e ${RED}
    echo '__________.__                 __   ________          __   '
    echo '\______   \  | _____    ____ |  | _\_____  \  __ ___/  |_ '
    echo ' |    |  _/  | \__  \ _/ ___\|  |/ //   |   \|  |  \   __\'
    echo ' |    |   \  |__/ __ \\  \___|    </    |    \  |  /|  |  '
    echo ' |______  /____(____  /\___  >__|_ \_______  /____/ |__|  '
    echo '        \/          \/     \/     \/       \/             '
    echo
    echo -e ${STD}
}

if [[ $1 == "" ]]; then
    if [ "$EUID" -ne 0 ]; then
        echo "Please run this script as root"
        exit
    fi
    banner
    cp blackout /usr/local/bin/blackout
    chmod +x /usr/local/bin/blackout
    echo -e ${GREEN}
    echo "Installed to /usr/local/bin/blackout"
    echo
    echo -e ${STD}
    if [[ $(echo $PATH | grep -Eo ":/usr/local/bin:") != ":/usr/local/bin:" ]]; then
        echo -e "${RED}WARNING: ${STD}Path ${GREEN}/usr/local/bin${STD} is not in your \$PATH variable. You may want to update your path variable."
    fi
    exit
elif [[ $1 == "--user" ]]; then
    banner
    cp blackout ${HOME}/.local/bin/blackout
    chmod +x ${HOME}/.local/bin/blackout
    echo -e ${GREEN}
    echo "Installed to ${HOME}/.local/bin/blackout"
    echo
    echo -e ${STD}
    if [[ $(echo $PATH | grep -Eo ":${HOME}/.local/bin:") != ":${HOME}/.local/bin:" ]]; then
        echo -e "${RED}WARNING: ${STD}Path ${GREEN}/usr/local/bin${STD} is not in your \$PATH variable. You may want to update your path variable."
    fi
    exit
else
    banner
    echo "Unknown option"
    echo
    exit
fi