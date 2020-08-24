#!/usr/bin/env bash


# Este script debe encontrarse en la ruta base del proyecto.

# Arranque de los contenedores definidos en docker-compose.yml
sudo docker-compose up -d

# Configuración de re-arranque automatico para todos los contenedores que componen Bitwarden-Self-Hosted.
docker update --restart always bw_backup bitwarden_self_host_bitwarden_1 bitwarden_self_host_nginx_1
