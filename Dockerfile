# Imagen base ligera de Node.js 20
FROM node:20-alpine

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos solo el package.json primero para aprovechar la caché de capas
COPY package.json .

# Instalamos las dependencias
RUN npm install

# Copiamos el resto de los archivos del proyecto
COPY . .

# Exponemos el puerto en el que escucha la aplicación
EXPOSE 3000

# Comando de arranque del contenedor
CMD ["npm", "start"]
