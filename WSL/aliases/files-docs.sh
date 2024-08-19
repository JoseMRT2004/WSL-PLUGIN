# Manipular archivos de windows desde WSL 

alias mvwd='mv $1 /mnt/c/Users/$windowsuser/'
alias mvfromwd='mv /mnt/c/Users/$windowsuser/$1 $2'
             alias nvimwd='nvim /mnt/c/Users/$windowsuser/'
alias mkdirwd='mkdir /mnt/c/Users/$windowsuser/'
  alias rmdir='rm -i /mnt/c/Users/$windowsuser/'
alias catwd='cat /mnt/c/Users/$windowsuser/$1'

# Comprimir o descomprimir archvos

     alias unzipwd='unzip $1 -d /mnt/c/Users/$windowsuser/$2'
 alias tarxwd='tar -xvf $1 -C /mnt/c/Users/$windowsuser/$2'
               alias zipwd='zip -r /mnt/c/Users/$windowsuser/$1 $2'
alias tarcwd='tar -cvf /mnt/c/Users/$windowsuser/$1 $2'
