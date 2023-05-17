# Establece la imagen base
FROM node:14-alpine

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos de la aplicación al contenedor
COPY package*.json ./
COPY . .

# Instala las dependencias
RUN npm install

# Construye la aplicación React
RUN npm run build

# Establece las variables de entorno
ENV PORT=3000
ENV HOST=0.0.0.0

# Expone el puerto en el que la aplicación está escuchando
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]