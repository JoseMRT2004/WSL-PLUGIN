export windowsuser= 
export wsluser=

vimt() {
    if [ -z "$1" ]; then
        echo -e "\033[31mError: Se requiere especificar un archivo o directorio.\033[0m"
        return 1
    fi

    local target="/mnt/c/Users/$windowsuser/$1"

    if [ -e "$target" ]; then
        vim "$target"
    else
        echo -e "\033[31mError: El archivo o directorio \"$1\" no existe en /mnt/c/Users/$windowsUser/.\033[0m"
        return 1
    fi
}

touchw() {
    if [ $# -lt 1 ]; then
        echo -e "\033[31mError: Se requiere especificar al menos un archivo.\033[0m"
        return 1
    fi

    touch "/mnt/c/Users/$windowsuser/$@"
}

cpw() {
    if [ $# -lt 2 ]; then
        echo -e "\033[31mError: Uso incorrecto. Se requiere especificar un archivo o directorio y un usuario de WSL.\033[0m"
        return 1
    fi

    local source="/mnt/c/Users/$windowsuser/$1"
    local destination="/home/$wsluser/"

    cp -rfu "$source" "$destination"
}

rmall() {
    if [ -z "$1" ]; then
        echo -e "\033[31mError: Se requiere especificar un archivo o directorio.\033[31m"
        return 1
    fi

    rm -rf "/mnt/c/Users/$windowsuser/$1"
}

lsdw() {
    if [ -z "$windowsuser" ]; then
        echo -e "\033[31mError: Se requiere especificar el usuario.\033[0m"
        return 1
    fi

    ls -a "/mnt/c/Users/$windowsuser"
}

alias vimwd='vim /mnt/c/Users/$windowsuser/'
alias mkdir='mkdir /mnt/c/Users/$windowsuser/'
alias rmdir='rm -i /mnt/c/Users/$windowsuser/'
