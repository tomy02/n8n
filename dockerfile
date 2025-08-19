# Imagen oficial de n8n
FROM n8nio/n8n:latest

# Establecemos el directorio de trabajo
WORKDIR /home/node

# Puerto por defecto de n8n
EXPOSE 5678

# Comando por defecto al iniciar el contenedor
CMD ["n8n", "start"]
