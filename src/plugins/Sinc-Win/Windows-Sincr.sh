Sincwsl() {
  if [ -z "$1" ]; then
    echo -e "${ERROR_FILE_NOT_SPECIFIED}"  # Mensaje de error si no se especifica un archivo
    return 1
  fi

  if [ ! -e "/mnt/c/Users/$windows_username/$1" ]; then
    echo -e "${ERROR_FILE_NOT_EXIST}"  # Mensaje de error si el archivo no existe
    return 1
  fi

  cp -rafpu "/mnt/c/Users/$windows_username/$1" "/home/$USER/$1"  # Copia el archivo con atributos y preserva

  echo -e "${BRIGHT_BLUE}${BG_BRIGHT_WHITE}Ingresa el intervalo de sincronización en formato cron (e.g., '*/5 * * * *'):${RESET}"
  echo -e ${EJP_CRON}
  read cron_schedule  # Lee el cronograma especificado por el usuario


  (crontab -l 2>/dev/null; echo "$cron_schedule cp -rafpu \"/mnt/c/Users/$windows_username/$1\" \"/home/$USER/$1\"") | crontab -  # Añade el cron job al crontab
}
