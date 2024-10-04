install_wslp() {
    
    if ! command -v git &> /dev/null; then # Verifica si dependencias imprtantes estan instaladas
        sudo apt-get update
        sudo apt-get install -y git
    fi

    
    if ! command -v wine &> /dev/null; then
        sudo apt-get update
        sudo apt-get install -y wine
    fi

     
    if [ ! -d "/home/$USER/WSL-PLUGIN" ]; then
        git clone https://github.com/JoseMRT2004/WSL-PLUGIN.git
    fi

   
    if [ -z "$windows_username" ]; then 
        windows_username=$(wine cmd /c echo %USERNAME% | tr -d '\r')  # Obtiene el nombre de usuario de Windows y configura la variable de entorno
        echo "export WINDOWS_USER_PATH=/mnt/c/Users/$windows_username" >> ~/.bashrc
    else
        echo "export WINDOWS_USER_PATH=/mnt/c/Users/$windows_username" >> ~/.bash_profile
    fi

    
    if [ -w ~/.bashrc ]; then # Añadir el comando `find` para ejecutar los scripts en cada inicio de sesión de Bash
        echo 'find /home/$USER/WSL-PLUGIN/WSL/ -type f -exec bash -c '\''source "$0"'\'' {} \;' >> ~/.bashrc
    elif [ -w ~/.bash_profile ]; then
        echo 'find /home/$USER/WSL-PLUGIN/WSL/ -type f -exec bash -c '\''source "$0"'\'' {} \;' >> ~/.bash_profile
    fi
 
}
