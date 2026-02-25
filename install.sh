confirm() {
    while true; do
        read -p "$1 (y/n): " yn
        case "$yn" in
            [Yy]|[Yy][Ee][Ss])
                return 0
                ;;
            [Nn]|[Nn][Oo])
                echo "Aborted."
                exit 1
                ;;
            *)
                echo "Please answer yes or no."
                ;;
        esac
    done
}

RED_BG="\e[41m"
WHITE="\e[37m"
BOLD="\e[1m"
RED="\e[31m"
RESET="\e[0m"

echo "  ____        _       _           _        _ _           ";
echo " |  _ \\      | |     (_)         | |      | | |          ";
echo " | |_) |_   _| |_ ___ _ _ __  ___| |_ __ _| | | ___ _ __ ";
echo " |  _ <| | | | __/ _ \\ | '_ \\/ __| __/ _\` | | |/ _ \\ '__|";
echo " | |_) | |_| | ||  __/ | | | \\__ \\ || (_| | | |  __/ |   ";
echo " |____/ \\__, |\\__\\___|_|_| |_|___/\\__\\__,_|_|_|\\___|_|   ";
echo "         __/ |                                           ";
echo "        |___/                               By Opt1mi and FSMS";

printf "${BOLD}${WHITE}${RED_BG} !!!WARNING!!! ${RESET}\n${RED} Opt1mi nor FSMS will guarantie you that the\n script will work properly, use this on your own risk\nIf you don't want to risk it, please install Pterodactyl and Blueprint yourself, this is easy."

confirm "Continue?"

echo "later..."
