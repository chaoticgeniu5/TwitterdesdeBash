  _                _   _     _                           _              _   _                         _           _   
 | |              (_) | |   | |                         | |            | | | |                       (_)         | |  
 | |_  __      __  _  | |_  | |_    ___   _ __     ___  | |__     ___  | | | |    ___    ___   _ __   _   _ __   | |_ 
 | __| \ \ /\ / / | | | __| | __|  / _ \ | '__|   / __| | '_ \   / _ \ | | | |   / __|  / __| | '__| | | | '_ \  | __|
 | |_   \ V  V /  | | | |_  | |_  |  __/ | |      \__ \ | | | | |  __/ | | | |   \__ \ | (__  | |    | | | |_) | | |_ 
  \__|   \_/\_/   |_|  \__|  \__|  \___| |_|      |___/ |_| |_|  \___| |_| |_|   |___/  \___| |_|    |_| | .__/   \__|
                                                                                                         | |          
                                                                                                         |_|  

# Twitter Bash Script

Este es un script de Bash que te permite ver y publicar tweets en tu cuenta de Twitter directamente desde la línea de comandos.

## Requisitos
Para usar este script, necesitarás:

- Una cuenta de Twitter
- Credenciales de API de Twitter para autenticarte con la API de Twitter (puedes obtenerlas en el portal de desarrolladores de Twitter)

# Uso
- Clona este repositorio en tu máquina local.
- Crea un archivo llamado credentials.txt en el directorio raíz del repositorio y agrega tus credenciales de API de Twitter en el siguiente formato:

<sub> 

consumer_key=\<tu-consumer-key>

consumer_secret=\<tu-consumer-secret>

access_token=\<tu-access-token>

access_secret=\<tu-access-secret>

</sub>

- Guarda el archivo y ciérralo.
- Abre una terminal y navega hasta el directorio raíz del repositorio.
- recuerda que hay que cambiar los permisos al script, con chmod 766 twitter.sh para que te permita ejecutarlo
- Ejecuta el script # *twitter.sh* # para ver los 10 tweets más recientes de tu cuenta de Twitter:

<sub>
./twitter.sh
</sub>

- Si deseas publicar un nuevo tweet, proporciona el texto del tweet como un argumento para el script:
<sub>
./twitter.sh "Este es mi primer tweet desde la línea de comandos."
</sub>

- El script publicará el tweet en tu cuenta de Twitter y mostrará el tweet recién publicado.

## Notas
* Este script utiliza la utilidad curl y la herramienta jq para interactuar con la API de Twitter. Si no tienes estas herramientas instaladas en tu sistema, deberás instalarlas antes de usar este script.
* Este script se proporciona "tal cual" sin garantía de ningún tipo. Úsalo bajo tu propio riesgo.
Contribuyendo

Pues ahi esta, este script lo utilizo para mandar alertas de mi laboratorio casero y como simple ejercicio con curl y bash, ojala te pueda servir, si sabes algo de bash, sabras que este comando puedes concatenarlo o mandarle variables $VARIABLE en el parametro para automatizar tareas y eso







