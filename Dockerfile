#Imagen del docker
FROM node:18-bullseye as bot

#Directorio de trabajo dentro del docker
WORKDIR /app

#Copiamos el package,json dentro del docker
COPY /app/package*.json ./

#Copiamos el .env porque el main.js tambien lo usa
COPY .env /app

#Instalamos las dependencias dentro del docker
RUN npm i

#Instalamos nodemon globalmente
RUN npm install -g nodemon

#Copia TODO dentro del Docker
COPY /app /app

ARG RAILWAY_STATIC_URL
ARG PUBLIC_URL
ARG PORT

#Comando inicial al Construir el docker
CMD ["nodemon", "app.js"]