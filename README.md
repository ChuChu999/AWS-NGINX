# AWS-NGINX
Dockerized NGINX configuration for my Amazon EC2 instance

### How to Deploy
- clone https://github.com/ECE-FIG/WhereToGo into `/srv/idkwheretogo/` as the folder `www/`
- clone https://github.com/ChuChu999/AWS-NGINX into `/srv/` as the folder `nginx/`
- `docker-compose up` to build the Docker images and launch the containers

### How to Install SSL Certificates
- `docker exec -it nginx_nginx_1 sh` to log into the nginx container
- `certbot` to walk-through the certbot letsencrypt installer

### How to Enable HTTPS
- `cd /etc/nginx/` to navigate to the nginx config files
- `sh enable-https.sh` to execute the shell script that swaps out the nginx configs in `sites-enabled/`
