# Статический сайт «Юнирест Технологии» на nginx
FROM nginx:1.27-alpine

# Свой конфиг вместо стандартного
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Файлы сайта
COPY index.html /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY js/  /usr/share/nginx/html/js/
COPY img/ /usr/share/nginx/html/img/

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD wget -q --spider http://127.0.0.1/ || exit 1
