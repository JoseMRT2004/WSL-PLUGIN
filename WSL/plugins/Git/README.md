### Aquí tienes una tabla que detalla los alias de Git definidos en el script proporcionado, con una breve descripción de lo que hace cada uno:

| Alias      | Comando                              | Descripción                                                                                          |
|------------|--------------------------------------|------------------------------------------------------------------------------------------------------|
| `g`        | `command git`                        | Alias genérico para ejecutar comandos de Git.                                                        |
| `ga`       | `command git add`                    | Añadir archivos al área de preparación (staging area).                                               |
| `gaa`      | `command git add --all`              | Añadir todos los archivos al área de preparación, incluyendo cambios, archivos nuevos y eliminados.   |
| `gbl`      | `command git blame -b -w`            | Mostrar los cambios en las líneas de un archivo con información sobre el autor de cada cambio.        |
| `gb`       | `command git branch`                 | Listar todas las ramas locales.                                                                      |
| `gbD`      | `command git branch --delete --force`| Eliminar una rama de manera forzada.                                                                 |
| `gbda`     | `command git branch --no-color --merged \| grep -vE "^([+*]|\s*$(git_main_branch)\|$(git_develop_branch))\s*$" \| xargs git branch --delete 2>/dev/null` | Eliminar todas las ramas que han sido fusionadas (excepto las principales).                          |
| `gco`      | `command git checkout`               | Cambiar de rama o restaurar archivos en el área de trabajo.                                          |
| `gcm`      | `command git checkout "$(git_main_branch)"` | Cambiar a la rama principal (main/master).                                                          |
| `gcl`      | `command git clone --recursive`      | Clonar un repositorio de Git junto con todos sus submódulos.                                         |
| `gc`       | `command git commit --verbose`       | Hacer un commit con detalles adicionales sobre los cambios.                                          |
| `gca`      | `command git commit --verbose --all` | Hacer un commit de todos los cambios (seguimiento de todos los archivos).                            |
| `gcan!`    | `command git commit --verbose --all --no-edit --amend` | Modificar el último commit con los cambios actuales sin editar el mensaje de commit.                |
| `gd`       | `command git diff`                   | Mostrar las diferencias entre el índice y el árbol de trabajo.                                       |
| `gfa`      | `command git fetch --all --prune`    | Obtener actualizaciones de todos los remotos y eliminar referencias no utilizadas.                   |
| `gignored` | `command git ls-files -v | grep "^[[:lower:]]"` | Mostrar los archivos ignorados por Git en el repositorio.                                        |
| `gm`       | `command git merge`                  | Fusionar una rama con la rama actual.                                                                |
| `gp`       | `command git push`                   | Enviar cambios al repositorio remoto.                                                                |
| `grh`      | `command git reset`                  | Deshacer cambios en el índice y el directorio de trabajo.                                            |
| `gsh`      | `command git show`                   | Mostrar varios tipos de objetos de Git, como commits, etiquetas, etc.                                |
| `gst`      | `command git status`                 | Mostrar el estado de los archivos en el directorio de trabajo y el índice.                           |
| `gsw`      | `command git switch`                 | Cambiar a una rama diferente.                                                                        |
| `gup`      | `command git pull --rebase`          | Actualizar la rama actual con cambios del repositorio remoto, usando rebase para integrar los cambios.|
| `glg`      | `command git log --stat`             | Mostrar el historial de commits con estadísticas de archivos.                                        |
| `ggpush`   | `command git push origin "$(git_current_branch)"` | Enviar cambios de la rama actual al remoto `origin`.                                              |
