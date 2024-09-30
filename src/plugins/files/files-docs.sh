
# Manipular archivos de Windows desde WSL

alias mvwd='mv $1 /mnt/c/Users/$windowsuser/'
alias mvfromwd='mv /mnt/c/Users/$windowsuser/$1 $2'
alias nvimwd='nvim /mnt/c/Users/$windowsuser/'
alias mkdirwd='mkdir /mnt/c/Users/$windowsuser/'
alias rmdir='rm -i /mnt/c/Users/$windowsuser/'
alias catwd='cat /mnt/c/Users/$windowsuser/$1'

# Comprimir o descomprimir archivos

alias unzipwd='unzip $1 -d /mnt/c/Users/$windowsuser/$2'
alias tarxwd='tar -xvf $1 -C /mnt/c/Users/$windowsuser/$2'
alias zipwd='zip -r /mnt/c/Users/$windowsuser/$1 $2'
alias tarcwd='tar -cvf /mnt/c/Users/$windowsuser/$1 $2'

# Función para abrir un archivo o directorio en Vim

vimt() {
    if [ -z "$1" ]; then
        echo -e "${ERROR_FILE_NOT_SPECIFIED}"
        return 1
    fi

    local target="/mnt/c/Users/$windows_username/$1"

    if [ -e "$target" ]; then
        vim "$target"  # Abre el archivo en Vim
    else
        echo -e "${ERROR_FILE_NOT_EXIST}"
        return 1
    fi
}

touchw() {
    if [ $# -lt 1 ]; then
        echo -e "${ERROR_INSUFFICIENT_ARGS}"
        return 1
    fi

    touch "/mnt/c/Users/$windows_username/$@"
}

# Función para copiar archivos del sistema de archivos de Windows a WSL

cpw() {
    if [ $# -lt 2 ]; then
        echo -e "${ERROR_INCORRECT_USAGE}"
        return 1
    fi

    local source="/mnt/c/Users/$windows_username/$1"
    local destination="/home/$USER/"

    cp -rfu "$source" "$destination"
}

rmall() {
    if [ -z "$1" ]; then
        echo -e "${ERROR_FILE_NOT_SPECIFIED}"
        return 1
    fi

    rm -rf "/mnt/c/Users/$windows_username/$1"
}

lsdw() {
    if [ -z "$windows_username" ]; then
        echo -e "${ERROR_NO_USER}"
        return 1
    fi

    ls -a "/mnt/c/Users/$windows_username"
}

du-wd() {
    if [ -z "$1" ]; then
        # Respuesta si en directorio o archivo no se define 
        echo -e "${ERROR_FILE_NOT_SPECIFIED}"
        return 1
    else
        # Se proporciona argumento, usa el directorio especificado
        local dir="/mnt/c/Users/$windows_username/$1"
    fi

    # Verifica si el directorio existe antes de ejecutar `du`
    if [ -d "$dir" ]; then
        du -sh "$dir" # Mide y muestra el tamaño del directorio
    else
        echo -e "${ERROR_COLOR}Error: El directorio '$dir' no existe.${RESET}"
    fi
}