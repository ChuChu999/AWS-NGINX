FROM alpine
COPY . /etc/nginx
WORKDIR /etc/nginx
RUN apk update && apk add nginx certbot-nginx
RUN mkdir -p /etc/nginx/sites-enabled
RUN ln -s /etc/nginx/sites-available/idkwheretogo /etc/nginx/sites-enabled/
RUN mkdir -p /run/nginx
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
