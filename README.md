## What is it?
This project focuses on automating the deployment of nodejs applications and building infrastructure as code.

This project is in early stages, so feel free to contribute and post suggestions. The goal is to automate deployment on Microsoft Azure when a new push is detected in a github repository using Github Actions, Terraform and Ansible.

#### Current Progress

2022-07-17: Kubernetes cluster setup successful with Ingress in minikube environment. 

2022-06-26: Setup Docker on Azure VM for Nginx and Let's Encrypt. Web app up and running with HTTPS.
            Repository: https://github.com/gauravjot/automating-docker-nginx-server-letsencrypt/tree/docker-nginx-ssl-only