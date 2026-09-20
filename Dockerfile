# Serve os arquivos estáticos com nginx (pra Coolify: Build Pack "Dockerfile", porta 80)
FROM nginx:alpine
COPY index.html moldura-camera.html moldura-live.html /usr/share/nginx/html/
EXPOSE 80
