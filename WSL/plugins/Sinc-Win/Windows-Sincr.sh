Sincwsl() {
  if [ -z "$1" ]; then
    echo -e "${ERROR_FILE_NOT_SPECIFIED}"
    return 1
  fi

  if [ -e "$1" ]; then
    echo -e "${ERROR_FILE_NOT_EXIST}"
    return 1
  fi

  cp -rafpu  "/mnt/c/Users/$windowsuser/$1" "/home/$USER/$1"
}