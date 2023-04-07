#!/bin/bash

# Leer las credenciales de la API de Twitter desde el archivo credentials.txt
source ./credentials.txt

# Establecer el nombre de usuario de Twitter
username="<tu-nombre-de-usuario-de-Twitter>"

# Autenticarse con la API de Twitter usando las credenciales proporcionadas
bearer_token=$(curl --request POST --url 'https://api.twitter.com/oauth2/token' --header "Authorization: Basic $(echo -n "$consumer_key:$consumer_secret" | base64)" --header 'Content-Type: application/x-www-form-urlencoded;charset=UTF-8' --data 'grant_type=client_credentials' | jq --raw-output '.access_token')

# Obtener los tweets más recientes del usuario especificado en la variable "username"
curl --request GET --url "https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=$username&count=10" --header "Authorization: Bearer $bearer_token" | jq '.[] | {created_at, text}'

# Publicar un nuevo tweet con el texto especificado en el argumento de línea de comandos
if [ -n "$1" ]; then
  tweet="$1"
  curl --request POST --url "https://api.twitter.com/1.1/statuses/update.json?status=$tweet" --header "Authorization: Bearer $bearer_token"
fi
