#Version minima de nodejs es la 18 
FROM node:18

#Directorio dentro del Docker
WORKDIR /usr/src/app

#Instalamos npm de forma global
RUN npm install -g npm