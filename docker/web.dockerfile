FROM nginx:1.10

COPY docker/vhost.conf /etc/nginx/conf.d/default.conf

COPY docker/nginx.conf /etc/nginx/nginx.conf