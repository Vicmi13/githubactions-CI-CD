FROM node:12-slim

WORKDIR /usr/src/app
 
COPY package.json package-lock.json ./

# instalar las librerias necesarias para que corra el proyecto
RUN npm ci && npm cache clean --force

# Se va a copiar todo donde estas ubicado a la raiz del contenedor 
COPY  . .

ENV NODE_ENV=dev
 
# El comando para correr el proyecto con node
CMD ["node", "index.js"]

