## Desafío #3

## Lab 01

### Parte 1

Ir a [Docker Hub](https://hub.docker.com/) y busca la imagen de Nginx. Descarga la version 1.22.1

**Resultado**

En el buscador de Docker Hub ubicamos la imagen de Nginx

![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-20_11-44-49.png)

Procedemos a cargarla en el docker local con el comando `docker pull nginx`. En mi caso, la instalación de Docker la hice en el sistema operativo y no en la máquina virtual y me solicita la autenticación de superusuario en la ejecución.

![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-20_11-49-36.png)

El comando (sudo) `docker images` permite verificar que la imagen se encuentra descargada

![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-20_11-51-27.png)

### Parte 2

Paso por paso como ejecutar un par de contenedores de `MySQL` y de `PHPMyAdmin` que estén conectados entre si.

1. Inicia container de MySQL: `docker run --name=db -p 3306:3306 -e MYSQL_ROOT_PASSWORD=secret-pw -d mysql:8`
   
   ![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-20_16-38-55.png)

2. Puedes revisar los logs del contenedor con `docker logs db`
   
   ![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-20_16-40-15.png)

3. Puedes conectarte al contenedor con `docker exec -it db bash` y luego conectarte a MySQL por medio del comando `mysql -u root -p`
   
      ![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-20_16-58-53.png)

4. Para salir de la terminal interactiva del contenedor, primero hay que salir de `MySQL` por medio de `exit`, y una vez fuera podemos tecler la combinación `Ctrl+P` y `Ctrl+Q` para salir. Esto no detendrá nuestro contenedor
   
   ![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-20_17-09-39.png)
   
   En este caso sólo logré salir del bash con "exit"

5. Inicia container de `PHPMyAdmin`: `docker run --name=my-admin -p 82:80 --link db:db -d phpmyadmin`
   
   1. Podrás ver tu contenedor de `PHPMyAdmin` corriendo desde [http://localhost:82/](http://localhost:82/ "http://localhost:82/")
   
   ![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-20_17-15-32.png)
   
   ![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-20_17-15-45.png)
   
   1. Una vez ahí introduce las credenciales correctas para acceder y comenzar a jugar con tus contenedores
   
   ![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-20_17-18-13.png)

6. Una vez que hayas jugado un poco con los contenedores, asegúrate de detenerlos y borrarlos utilizando `docker stop` para detenerlos, y `docker rm` para removerlos

![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-20_17-25-33.png)## Lab-02

Ejecutar un contenedor que corre `MongoDB` y con el cual nos conectaremos por medio de `Python`

1. Iniciar el container de `MongoDB` utilizando el comando `docker run -d -p 27017:27017 --name m1 mongo`
   
   1. Puedes conectarte al contenedor de Mongo con `docker exec -it m1 /bin/bash` y luego conectarte a `MongoDB` por medio del comando `mongosh`
   2. Para salir de la terminal interactiva del contenedor, primero hay que salir de `MongoDB` tecleando el comando `exit`, y una vez fuera podemos tecler la combinación `Ctrl+P` y `Ctrl+Q` para salir

2. Utilizaremos los scripts de `Python` existentes en la carpeta para la colección de mongo, utilizando la librería <https://api.mongodb.com/python/current/tutorial.html>
   
   1. Instalar la librería de mongo por medio del comando `pip install pymongo`
   2. Ejecuta los scripts con `python populate.py` y `python find.py`
   3. Revisa los registros por medio del CLI de `mongo` o de tu DBMS favorito

3. Una vez que hayas terminado de jugar con `MongoDB` y los scripts de `Python`, asegúrate de detener y remover el contenedor de `MongoDB` en ejecución utilizando `docker stop m1; docker rm m1`## Lab-02
   
   Ejecutar un contenedor que corre `MongoDB` y con el cual nos conectaremos por medio de `Python`
   
   1. Iniciar el container de `MongoDB` utilizando el comando `docker run -d -p 27017:27017 --name m1 mongo`
      
      1. Puedes conectarte al contenedor de Mongo con `docker exec -it m1 /bin/bash` y luego conectarte a `MongoDB` por medio del comando `mongosh`
      2. Para salir de la terminal interactiva del contenedor, primero hay que salir de `MongoDB` tecleando el comando `exit`, y una vez fuera podemos tecler la combinación `Ctrl+P` y `Ctrl+Q` para salir
   
   2. Utilizaremos los scripts de `Python` existentes en la carpeta para la colección de mongo, utilizando la librería <https://api.mongodb.com/python/current/tutorial.html>
      
      1. Instalar la librería de mongo por medio del comando `pip install pymongo`
      2. Ejecuta los scripts con `python populate.py` y `python find.py`
      3. Revisa los registros por medio del CLI de `mongo` o de tu DBMS favorito
   
   3. Una vez que hayas terminado de jugar con `MongoDB` y los scripts de `Python`, asegúrate de detener y remover el contenedor de `MongoDB` en ejecución utilizando `docker stop m1; docker rm m1`
