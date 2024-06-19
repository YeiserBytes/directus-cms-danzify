# Usar la última imagen oficial de Node.js LTS
FROM node:18-alpine

# Crear y usar el directorio de la aplicación
WORKDIR /app

# Copiar package.json y package-lock.json primero para aprovechar la caché de Docker
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código de la aplicación
COPY . .

# Exponer el puerto de la aplicación
EXPOSE 8055

# Iniciar la aplicación
CMD ["npm", "start"]
