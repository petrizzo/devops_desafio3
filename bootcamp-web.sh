#!/bin/bash

echo "Creando un contenedor que despliegue información en el navegador"
sudo docker run -d --name bootcamp-web -p 9999:80 nginx
sudo docker cp /home/petrizzo/Descargas/CursoDevOps/doc-devops/devops-in-tech/challenge/03-Docker/03/web/* bootcamp-web:/usr/share/nginx/html
echo "Muestra el contenido del contenedor"
#sudo docker exec -it bootcamp-web bash
#ls /usr/share/nginx/html
echo "ya puedes desplegar en web localhost:9999"
echo "fin"