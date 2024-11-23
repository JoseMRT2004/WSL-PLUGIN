
# Descripción de permisos
declare -A PERMISSIONS_DESC=(
    [755]="rwxr-xr-x"
    [644]="rw-r--r--"
    [700]="rwx------"
    [600]="rw-------"
    [777]="rwxrwxrwx"
    [664]="rw-rw-r--"
    [775]="rwxrwxr-x"
)

# Función para cambiar permisos y mostrar mensajes
change_permissions() {
    local permission=$1
    local file=$2
    local permission_desc=${PERMISSIONS_DESC[$permission]}

    if [ -z "$permission_desc" ]; then
        echo -e "${ERROR_COLOR}Error: Permiso no soportado.${RESET}"
        return 1
    fi

    chmod "$permission" "/mnt/c/Users/$windowsuser/$file" && \
    echo -e "${SUCCESS_COLOR}Permisos (${permission_desc}) aplicados a $file.${RESET}" || \
    echo -e "${ERROR_COLOR}Error aplicando permisos (${permission_desc}) a $file.${RESET}"
}

# Funciones para permisos comunes
chmwd755() { change_permissions 755 "$1"; }
chmwd644() { change_permissions 644 "$1"; }
chmwd700() { change_permissions 700 "$1"; }
chmwd600() { change_permissions 600 "$1"; }
chmwdall() { change_permissions 777 "$1"; }
chmwd664() { change_permissions 664 "$1"; }
chmwd775() { change_permissions 775 "$1"; }