FROM nginx:1.10

COPY vhost.conf /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/nginx.conf