#Imagen del docker
FROM node:18-bullseye as bot

#Directorio de trabajo dentro del docker
WORKDIR /app

#Copiamos el package,json dentro del docker
COPY package*.json ./

#Instalamos las dependencias dentro del docker
RUN npm i

#Copia TODO dentro del Docker
COPY . .

ARG RAILWAY_STATIC_URL
ARG PUBLIC_URL
ARG PORT

#Comando inicial al Construir el docker
CMD ["npm", "start"]