## What is it?
This project focuses on automating the deployment of nodejs applications and building infrastructure as code.

This project is in early stages, so feel free to contribute and post suggestions. The goal is to automate deployment on Microsoft Azure when a new push is detected for a github repository.

## Setup
This setup assumes you are using Linux OS. I was running Ubuntu 20.04.
- *docker_template.yml*       goes in *~/* directory.
- *nginx-temp.conf*           goes in *~/nginx/conf/* directory
- Run *`sudo docker compose -f docker_template.yml up`* 
This will setup nginx. Check by visiting *http://yourdomain.com*. It will return empty webpage or you can *`touch ~/html/index.html`*.
- Run *`sudo docker compose -f docker_template.yml run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d domain.com`*
This generates SSL certificates: a public key and a private key.
- Run *`sudo rm ~/nginx/conf/nginx-temp.conf`*
- Copy *nginx.conf* file to *~/nginx/conf/*. This config contains SSL certificates. Make sure you edit the domain name fields. You can do so by `nano ~/nginx/conf/nginx.conf`; `Ctrl+O` to save and `Ctrl+X` to exit.
- Run *`sudo docker restart <webserver_container_name>`*
- You should be all done. Visit *https://yourdomain.com*.

##Big Thanks
- Nathanaël Cherrier, How to handle HTTPS using Nginx and Let's encrypt in Docker. https://mindsers.blog/post/https-using-nginx-certbot-docker/