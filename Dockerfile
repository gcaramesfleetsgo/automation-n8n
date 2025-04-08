# Imagen base de n8n
FROM n8nio/n8n:1.85.4

# Habilitamos instalación global de módulos (cheerio en este caso)
USER root
RUN npm install -g cheerio

# Volvemos al usuario no root por seguridad
USER node
