# AWS-NGINX
Dockerized NGINX configuration for my Amazon EC2 instance

### How to Deploy
- clone https://github.com/ECE-FIG/WhereToGo into `/srv/idkwheretogo.com/` as the folder `www/`
- clone https://github.com/ChuChu999/AWS-NGINX into `/srv/` as the folder `nginx/`
- `docker-compose up` to build the Docker images and launch the containers

### How to Install SSL Certificates
- `docker exec -it nginx_nginx_1 sh` to log into the nginx container
- `certbot` to walk-through the certbot letsencrypt wizard (no need to allow certbot to handle https redirects)

### How to Enable HTTPS
- `docker exec -it nginx_nginx_1 sh` if you're not already logged in to the nginx container
- `cd /etc/nginx/` to navigate to the nginx config files
- `sh enable-https.sh` to execute the shell script that swaps out the nginx configs in `sites-enabled/`
