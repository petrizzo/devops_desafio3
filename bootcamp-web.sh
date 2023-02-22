#!/bin/bash

echo "Creando un contenedor que despliegue información en el navegador"
sudo docker run -d --name bootcamp-web -p80:80 nginx
sudo docker cp /home/petrizzo/Descargas/CursoDevOps/doc-devops/devops-in-tech/challenge/03-Docker/03/web bootcamp-web:/bootcamp-web
echo "Muestra el contenido del contenedor"
sudo docker exec -it bootcamp-web bash
tree /bootcamp-web
CONTINUAR
echo "fin"