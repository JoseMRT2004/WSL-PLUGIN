# Alias para listar archivos en un directorio de Windows desde WSL

alias lswin='ls /mnt/c/Users/$windows_username/$1'            # Lista archivos en un directorio especificado
alias lswinl='ls -l /mnt/c/Users/$windows_username/$1'        # Lista detallada de archivos
alias lswinlh='ls -lh /mnt/c/Users/$windows_username/$1'      # Lista detallada con tamaños legibles
alias lswinall='ls -a /mnt/c/Users/$windows_username/$1'      # Lista todos los archivos, incluyendo ocultos
alias lswinla='ls -la /mnt/c/Users/$windows_username/$1'      # Lista detallada incluyendo archivos ocultos
alias lswinS='ls -lS /mnt/c/Users/$windows_username/$1'       # Lista archivos ordenados por tamaño
alias lswinT='ls -lt /mnt/c/Users/$windows_username/$1'       # Lista archivos ordenados por fecha de modificación
alias lswincolor='ls --color=auto /mnt/c/Users/$windows_username/$1'  # Lista archivos con colores
