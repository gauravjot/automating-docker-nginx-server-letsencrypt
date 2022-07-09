## What is it?
This project focuses on automating the deployment of nodejs applications and building infrastructure as code.

This project is in early stages, so feel free to contribute and post suggestions. The goal is to automate deployment on Microsoft Azure when a new push is detected in a github repository using Github Actions, Terraform and Ansible.

#### Current Progress
2022-06-26: Setup Docker on Azure VM for Nginx and Let's Encrypt. Web app up and running with HTTPS.

## Setup
This setup assumes you are using Linux OS with docker installed. I was running Ubuntu 20.04.

Clone this repository in *~/* directory and move following files for easier setup.

| File                  | Move to            |
|-----------------------|--------------------|
| docker_template.yml   | *~/*               |
| nginx-temp.conf       | *~/nginx/conf/*    |

- Create `~/html` directory to store your html files.

#### Setting up Nginx
- CD to `~` directory and run *`sudo docker compose -f docker_template.yml up webserver -d`*
- Run *`sudo docker ps -a`* and copy name of the webserver container.
- Run *`sudo docker start <webserver-container-name>`*. Your project should be online and you should check by visiting *http://yourdomain.com*.

#### Setting up Certificates
- To generate certificates, run *`sudo docker compose -f docker_template.yml run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d domain.com`*
- Run *`sudo rm ~/nginx/conf/nginx-temp.conf`*
- Move *nginx.conf* file from cloned repository to *~/nginx/conf/*. This config contains SSL certificates, so make sure you change every `yourdomain.com` with your own domain name. You can use `nano ~/nginx/conf/nginx.conf`; `Ctrl+O` to save and `Ctrl+X` to exit.
- Run *`sudo docker restart <webserver_container_name>`*
- You should be all done. Visit *https://yourdomain.com*.

## Big Thanks
- Nathanaël Cherrier, How to handle HTTPS using Nginx and Let's encrypt in Docker. https://mindsers.blog/post/https-using-nginx-certbot-docker/