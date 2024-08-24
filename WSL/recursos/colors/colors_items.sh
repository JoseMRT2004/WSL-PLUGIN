#!/bin/bash

# Colores de texto estándar
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

# Colores de texto brillante
BRIGHT_BLACK='\033[1;30m'
BRIGHT_RED='\033[1;31m'
BRIGHT_GREEN='\033[1;32m'
BRIGHT_YELLOW='\033[1;33m'
BRIGHT_BLUE='\033[1;34m'
BRIGHT_MAGENTA='\033[1;35m'
BRIGHT_CYAN='\033[1;36m'
BRIGHT_WHITE='\033[1;37m'

# Colores de fondo estándar
BG_BLACK='\033[40m'
BG_RED='\033[41m'
BG_GREEN='\033[42m'
BG_YELLOW='\033[43m'
BG_BLUE='\033[44m'
BG_MAGENTA='\033[45m'
BG_CYAN='\033[46m'
BG_WHITE='\033[47m'

# Colores de fondo brillante
BG_BRIGHT_BLACK='\033[100m'
BG_BRIGHT_RED='\033[101m'
BG_BRIGHT_GREEN='\033[102m'
BG_BRIGHT_YELLOW='\033[103m'
BG_BRIGHT_BLUE='\033[104m'
BG_BRIGHT_MAGENTA='\033[105m'
BG_BRIGHT_CYAN='\033[106m'
BG_BRIGHT_WHITE='\033[107m'

# Colores específicos para mensajes de advertencia, error, éxito, etc.
ERROR_COLOR='\033[1;31m'    # Rojo brillante
WARN_COLOR='\033[1;33m'     # Amarillo brillante
SUCCESS_COLOR='\033[1;32m'  # Verde brillante
INFO_COLOR='\033[1;36m'     # Cian brillante
DEBUG_COLOR='\033[0;35m'    # Magenta

# Reset
RESET='\033['

# Mensajes
ERROR_FILE_NOT_SPECIFIED="${WARN_COLOR}Error: Se requiere especificar un archivo o directorio.${RESET}"
ERROR_FILE_NOT_EXIST="${ERROR_COLOR}Error: El archivo o directorio \"$1\" no existe en /mnt/c/Users/$windows_username/.${RESET}"
ERROR_INSUFFICIENT_ARGS="${WARN_COLOR}Error: Se requiere especificar al menos un archivo.${RESET}"
ERROR_INCORRECT_USAGE="${ERROR_COLOR}Error: Uso incorrecto. Se requiere especificar un archivo o directorio y un usuario de WSL.${RESET}"        
ERROR_NO_USER="${ERROR_COLOR}Error: Se requiere especificar el usuario.${RESET}"
SUCCESS_MSG="${SUCCESS_COLOR}Operation successful.${RESET}"
ERROR_MSG="${ERROR_COLOR}Operation failed.${RESET}"


