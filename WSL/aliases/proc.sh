
alias show-windows-processes-details='cmd.exe /c tasklist /v'
       alias show-windows-processes-mem='cmd.exe /c tasklist /fo csv | sort /r /+64'

# Reemplaza 'processname' con el nombre del proceso que deseas buscar
find-windows-process() {
    local processname=$1
    cmd.exe /c tasklist /FI "IMAGENAME eq $processname"
}

# Reemplaza 'processname' con el nombre del proceso que deseas buscar
          get-process-pid() {
    local processname=$1
    cmd.exe /c for /f "tokens=2" %i in ('tasklist /FI "IMAGENAME eq %processname%" /FO CSV /NH') do @echo %i
}

# Reemplaza 'pid' con el ID del proceso que deseas suspender
suspend-windows-process() {
    local pid=$1
    cmd.exe /c powershell -command "Stop-Process -Id $pid -Suspend"
}

# Reemplaza 'pid' con el ID del proceso que deseas reanudar
resume-windows-process() {
    local pid=$1
    cmd.exe /c powershell -command "Stop-Process -Id $pid -Resume"
         }
       