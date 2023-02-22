## Desafío #3

## Lab-03

### 2. Servidor Nginx

* Crea un servidor Nginx llamado bootcamp-web y copia el contenido de la carpeta web en la ruta que sirve este servidor web.

El comando `sudo docker run -d --name bootcamp-web -p80:80 nginx` nos permite ejecutar un nuevo contenedor en el puerto 80 de tipo nginx. Con el comando `docker ps` revisamos que se está ejecutando dicho contenedor. Por su parte, el comando `cp` con la siguiente sintaxis, permite hacer la copia del directorio completo desde la ubicación local hacia la del contenedor `sudo docker cp /home/petrizzo/Descargas/CursoDevOps/doc-devops/devops-in-tech/challenge/03-Docker/03/web bootcamp-web:/bootcamp-web`

![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-21_18-59-38.png)

* Ejecuta dentro del contenedor la acción ls, para comprobar que los archivos se han copiado correctamente.
  
  
  
  El comando `sudo docker exec -it bootcamp-web bash` permite verificar los archivos que están dentro del contenedor.

![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-21_19-09-59.png)

* Revisar documentacion nginx [Docker](https://hub.docker.com/_/nginx "https://hub.docker.com/_/nginx")
* Hacer que el servidor web sea accesible desde el puerto 9999 de tu local.

Para hacerlo accesible, debo indicarle en qué puerto lo voy a utilizar en el comando `sudo docker run -d --name bootcamp-web -p 9999:80 nginx`. En el navegador, la dirección localhost:9999 me devuelve la información de funcionamiento del nginx

![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-21_20-35-26.png)

Sin embargo, no está mostrándose la carpeta /web. Para ello, detenemos y borramos el contenedor y realizamos la siguiente modificación al comando run:

### Entrega

Pueden Realizar la entrega en equipo o individual, recuerden usar solo un repositorio para la entregan y me suman como colaboradora a su repositorio para dar visibilidad de sus avances

1. Crea un script en bash que cumpla el objetivo del ejercicio
2. Screenshot de la salida de los Resultados

### Tips

![](/home/petrizzo/Descargas/CursoDevOps/doc-devops/devops-in-tech/challenge/03-Docker/assets/5.png)
