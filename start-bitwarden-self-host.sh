#!/usr/bin/env bash


# 1/ Parada de contenedores que puedan estar en ejecucion
docker stop bw_backup bitwarden_self_host_bitwarden_1 bitwarden_self_host_nginx_1 bitwarden

# 2.a/ Creacion de las imagenes definidad en docker-compose.yml si es necesario. 
# (Desactivado por defecto. Esta orden es exclusiva con la numero 2.b y para ajecutarla ste script debe encontrarse en la ruta base del proyecto.)
#sudo docker-compose up -d

# 2.b/ Arranque de los contenedores definidos en docker-compose.yml. (Exclusiva con numero 2.a) 
docker start bw_backup bitwarden_self_host_bitwarden_1 bitwarden_self_host_nginx_1

# 3/ Configuración de re-arranque automatico para todos los contenedores que componen Bitwarden-Self-Hosted.
docker update --restart always bw_backup bitwarden_self_host_bitwarden_1 bitwarden_self_host_nginx_1
