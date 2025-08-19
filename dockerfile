# Usamos una imagen oficial de n8n
FROM n8nio/n8n:latest

# Exponer el puerto
EXPOSE 5678

# Comando por defecto al iniciar el contenedor
CMD ["n8n", "start"]
