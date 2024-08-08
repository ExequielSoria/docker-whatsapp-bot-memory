# Chatbot para Whatsapp Dockerizado (escribe en Memoria)

Este repositorio contiene una libreria externa la cual nos permite crear un bot de whatsapp en pocos minutos. Sin embargo, esta es una pequeña prueba para probar el bot.

REPOSITORIO DE LA LIBRERIA: https://bot-whatsapp.netlify.app/

### Como hacerlo funcionar

- Primero tenemos que construir la imagen del docker.
En la raiz del proyecto ejecutar:
> sudo docker-compose up --build -d

- Luego hay que entrar en la imagen del Docker
En la raiz del proyecto ejecutar:
> sudo docker exec -it docker-whatsapp-bot-memory_node /bin/bash

Una vez dentro de la imagen del Docker nos movemos al directorio "base-baileys-memory"
Ahi dentro ejecutamos:
> npm start