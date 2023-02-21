## Desafío #3

## Lab-02

Ejecutar un contenedor que corre `MongoDB` y con el cual nos conectaremos por medio de `Python`

1. Iniciar el container de `MongoDB` utilizando el comando `docker run -d -p 27017:27017 --name m1 mongo`
   
   ![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-21_06-38-57.png)
   
   1. Puedes conectarte al contenedor de Mongo con `docker exec -it m1 /bin/bash` y luego conectarte a `MongoDB` por medio del comando `mongosh`
   
   ![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-21_09-18-39.png)
   
   1. Para salir de la terminal interactiva del contenedor, primero hay que salir de `MongoDB` tecleando el comando `exit`, y una vez fuera podemos teclear la combinación `Ctrl+P` y `Ctrl+Q` para salir
   
   ****NOTA: la combinación ctrl+p y ctrl+q sale del VisualStudioCode***

2. Utilizaremos los scripts de `Python` existentes en la carpeta para la colección de mongo, utilizando la librería https://api.mongodb.com/python/current/tutorial.html
   
   **NOTA**:
   
   Antes de instalar  los scripts de Python, debo levantar el vagrant. Sin embargo, en mi caso, el vagrant no logra acceder a la dirección del hub de vagrant para descargar el box. Por eso, procedo a indicarle en el vagrantfile de dónde va a tomar el box que, en este caso, es una ubicación local. De esta forma, debí seguir lo establecido en el documento [caso.md](/home/petrizzo/Descargas/CursoDevOps/Caso.md) para proceder a ejecutar el vagrant y sus respectivas provisiones.
   
   
   
   1. Instalar la librería de mongo por medio del comando `pip install pymongo`
   
   ![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-21_16-07-08.png)
   
   1. Ejecuta los scripts con `python populate.py` y `python find.py`
      
      ![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-21_16-10-09.png)
   2. Revisa los registros por medio del CLI de `mongo` o de tu DBMS favorito
      
      
      
      Utilizamos la misma CLI desde el VSCode. Desde la línea de comando del `mongosh`, cambiamos a la base de datos `mi-db` con el comando `use db mi-db` y una vez allí procedemos a hacer algunas consultas como toda la información del documento "pt" y todos los registros con nombre de mascota "firulais".
      
      A continuación la salida de ambas consultas:
      
      ![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-21_18-18-44.png)

3. Una vez que hayas terminado de jugar con `MongoDB` y los scripts de `Python`, asegúrate de detener y remover el contenedor de `MongoDB` en ejecución utilizando `docker stop m1; docker rm m1`

![](/home/petrizzo/Descargas/CursoDevOps/Desafio3/Captura%20de%20pantalla_2023-02-21_18-22-58.png)
