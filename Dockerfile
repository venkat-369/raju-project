# Small, production-ready static web server
FROM nginx:alpine

# Copy your single-page site into Nginx default web root
COPY index.html /usr/share/nginx/html/index.html

# Expose HTTP
EXPOSE 80

# Optional: basic healthcheck
HEALTHCHECK CMD wget -qO- http://localhost:80/ || exit 1
