
# Delfos

Delfos es una aplicación web desarollada por la Universidad de La Rioja donde se pueden realizar prácticas de consultas de bases de datos.



## Requisitos
* [Git](https://git-scm.com/downloads)
* [Docker Engine](https://docs.docker.com/installation/) (Linux)
* [Docker Compose](https://docs.docker.com/compose/) (Linux)
* [Docker Desktop](https://docs.docker.com/desktop/) (Mac y Windows)


## Ejecución del entorno
1. Clonar el proyecto y acceder a la carpeta generada:
```sh
git clone https://github.com/recreaur/Delfos.git
cd docker-portal
```

2. Cambiar permisos necesarios
```sh
sudo chown -R 1000:1000 {conf,data,secrets}/*
sudo find {conf,data,secrets} -type d -exec chmod 700 {} \;
sudo find {conf,data,secrets} -type f -exec chmod 600 {} \;
```

3. Arrancar los containers mediante *docker-compose*:
```sh
docker-compose up
```
* Navegar hacia <http://localhost:5000>

## Consideraciones

Por motivos de seguridad, todos los contenedores se ejecutan de manera predeterminada con el usuario con UID 1000. Esto evita que los procesos sean ejecutados por *root*.

## Problemas comunes

A continuación se listan los problemas más comunes y sus soluciones:

### Problema

> No envía correos electrónicos

### Solución

Se debe debe de configurar la cuenta de correo electrónico en la ruta:
 `{BASE}/data/tomcat/webapps/ROOT/WEB-INF/classes/uapplication.properties`


