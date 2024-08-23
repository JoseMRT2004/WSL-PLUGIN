#!/bin/bash


windows_username=$(wine cmd /c echo %USERNAME%)
WINDOWS_USER_PATH="/mnt/c/Users/$windows_username"


# Función para abrir un archivo o directorio en Vim
vimt() {
    if [ -z "$1" ]; then
        echo -e "${ERROR_COLOR}Error: Se requiere especificar un archivo o directorio.${RESET}"
        return 1
    fi

    local target="/mnt/c/Users/$windows_username/$1"

    if [ -e "$target" ]; then
        vim "$target"  # Abre el archivo en Vim
    else
        echo -e "${ERROR_COLOR}Error: El archivo o directorio \"$1\" no existe en /mnt/c/Users//.${RESET}"
        return 1
    fi
}

touchw() {
    if [ $# -lt 1 ]; then
        echo -e "${ERROR_COLOR}Error: Se requiere especificar al menos un archivo.${RESET}"
        return 1
    fi

    touch "/mnt/c/Users/$windows_username/$@"
}

# Función para copiar archivos del sistema de archivos de Windows a WSL
cpw() {
    if [ $# -lt 2 ]; then
        echo -e "${ERROR_COLOR}Error: Uso incorrecto. Se requiere especificar un archivo o directorio y un usuario de WSL.${RESET}"
        return 1
    fi

    local source="/mnt/c/Users/$windows_username/$1"
    local destination="/home/$USER/"

    cp -rfu "$source" "$destination"
}

rmall() {
    if [ -z "$1" ]; then
        echo -e ${ERROR_COLOR}Error: Se requiere especificar un archivo o directorio.${RESET}
        return 1
    fi

    rm -rf "/mnt/c/Users/$windows_username/$1"
}

lsdw() {
    if [ -z "$windows_username" ]; then
        echo -e "${ERROR_COLOR}Error: Se requiere especificar el usuario.${RESET}"
        return 1
    fi

    ls -a "/mnt/c/Users/$windows_username"
}

du-wd() {
    if [ -z "$1" ]; then
                          # No se proporciona argumento, usa el directorio predeterminado
        echo -e "${ERROR_COLOR}Error: Se requiere especificar un archivo o directorio.${RESET}"
        return 1
    else
                          # Se proporciona argumento, usa el directorio especificado
        local dir="/mnt/c/Users/$windows_username/$1"
    fi
    
                          # Verifica si el directorio existe antes de ejecutar `du`
    if [ -d "$dir" ]; then
        du -sh "$dir" # Mide y muestra el tamaño del directorio
    else
        echo "${ERROR_COLOR}Error: El directorio '$dir' no existe.${RESET}"
    fi
}

