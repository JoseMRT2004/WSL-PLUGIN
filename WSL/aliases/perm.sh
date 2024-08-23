# Modificacion de permisos recurentes 

alias chmwd='chmod $1 /mnt/c/Users/$windowsuser/$2'

# Permisos comunes

alias chmwd755='chmod 755 /mnt/c/Users/$windowsuser/$1'  # rwxr-xr-x
alias chmwd644='chmod 644 /mnt/c/Users/$windowsuser/$1'  # rw-r--r--
alias chmwd700='chmod 700 /mnt/c/Users/$windowsuser/$1'  # rwx------
alias chmwd600='chmod 600 /mnt/c/Users/$windowsuser/$1'  # rw-------
alias chmwdall='chmod 777 /mnt/c/Users/$windowsuser/$1'  # rwxrwxrwx
alias chmwd664='chmod 664 /mnt/c/Users/$windowsuser/$1'  # rw-rw-r--
alias chmwd775='chmod 775 /mnt/c/Users/$windowsuser/$1'  # rwxrwxr-x

