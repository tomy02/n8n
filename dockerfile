# Usa la imagen oficial de n8n como base
FROM n8nio/n8n:latest

# Define el directorio de trabajo
WORKDIR /data

# Exponer el puerto en el que corre n8n
EXPOSE 5678

# Comando de inicio de n8n
CMD ["n8n"]
