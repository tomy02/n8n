# Imagen base oficial de Node
FROM node:18

# Crear directorio de trabajo
WORKDIR /usr/src/app

# Instalar n8n globalmente
RUN npm install -g n8n

# Exponer puerto (Render usará PORT automáticamente)
EXPOSE 5678

# Comando de inicio
CMD ["n8n"]
