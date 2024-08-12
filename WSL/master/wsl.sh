#!/bin/bash

# Definición de colores para mensajes de error
COLOR_ERROR="\033[31m"  # Rojo para mensajes de error
COLOR_RESET="\033[0m"   # Restablece el color al valor predeterminado


# Función para abrir un archivo o directorio en Vim
vimt() {
    if [ -z "$1" ]; then
        echo -e "${COLOR_ERROR}Error: Se requiere especificar un archivo o directorio.${COLOR_RESET}"
        return 1
    fi

    local target="/mnt/c/Users/$windowsuser/$1"

    if [ -e "$target" ]; then
        vim "$target"  # Abre el archivo en Vim
    else
        echo -e "${COLOR_ERROR}Error: El archivo o directorio \"$1\" no existe en /mnt/c/Users/$windowsUser/.${COLOR_RESET}"
        return 1
    fi
}

touchw() {
    if [ $# -lt 1 ]; then
        echo -e "${COLOR_ERROR}Error: Se requiere especificar al menos un archivo.${COLOR_RESET}"
        return 1
    fi

    touch "/mnt/c/Users/$windowsuser/$@"
}

# Función para copiar archivos del sistema de archivos de Windows a WSL
cpw() {
    if [ $# -lt 2 ]; then
        echo -e "${COLOR_ERROR}Error: Uso incorrecto. Se requiere especificar un archivo o directorio y un usuario de WSL.${COLOR_RESET}"
        return 1
    fi

    local source="/mnt/c/Users/$windowsuser/$1"
    local destination="/home/$USER/"

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
        echo -e "${COLOR_ERROR}Error: Se requiere especificar el usuario.\033[0m"
        return 1
    fi

    ls -a "/mnt/c/Users/$windowsuser"
}

du-wd() {
    if [ -z "$1" ]; then
        # No se proporciona argumento, usa el directorio predeterminado
        local dir="/mnt/c/Users/$windowsuser/"
    else
        # Se proporciona argumento, usa el directorio especificado
        local dir="/mnt/c/Users/$windowsuser/$1"
    fi
    
    # Verifica si el directorio existe antes de ejecutar `du`
    if [ -d "$dir" ]; then
        du -sh "$dir" # Mide y muestra el tamaño del directorio
    else
        echo "Error: El directorio '$dir' no existe."
    fi
}

