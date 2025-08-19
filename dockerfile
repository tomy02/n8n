# Usa la imagen oficial de n8n
FROM n8nio/n8n:latest

# Define el directorio de trabajo
WORKDIR /data

# Configuración de entorno mínima para que funcione
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV NODE_ENV=production
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Expone el puerto donde corre n8n
EXPOSE 5678

# Comando de inicio
CMD ["n8n"]
