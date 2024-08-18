Sincwsl() {
  if [ -z "$1" ]; then
    echo -e "\033[31m\nError: Se requiere especificar un archivo o directorio\033[0m"
    return 1
  fi

  if [ -e "$1" ]; then
    echo -e "\033[31mError: \"$1\" NO EXISTE EN WINDOWS O EN WSL. VERIFICA EL NOMBRE.\033[0m"
    return 1
  fi

  cp -rafpu  "/mnt/c/Users/$windowsuser/$1" "/home/$USER/$1"
}