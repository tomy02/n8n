# Usa una imagen base de Node con Alpine (más liviana)
FROM node:18-alpine

# Establecemos el directorio de trabajo
WORKDIR /usr/src/app

# Instala dependencias necesarias del sistema
RUN apk add --no-cache \
    bash \
    curl \
    python3 \
    make \
    g++ \
    tzdata

# Instalamos n8n de forma global
RUN npm install -g n8n

# Creamos un usuario no root para correr n8n
RUN adduser -D n8n
USER n8n

# Exponemos el puerto
EXPOSE 5678

# Comando de inicio
CMD ["n8n", "start"]
