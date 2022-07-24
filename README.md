## What is it?
This project focuses on automating the deployment of nodejs applications and building infrastructure as code.

This project is in early stages, so feel free to contribute and post suggestions. The goal is to automate deployment on Microsoft Azure when a new push is detected in a github repository using Github Actions, Terraform and Ansible.

### Current Progress

2022-07-24: Github Actions build nodejs app, build docker image and pushes to Docker hub.

2022-07-17: Kubernetes cluster setup successful with Ingress in minikube environment. 

2022-06-26: Setup Docker on Azure VM for Nginx and Let's Encrypt. Web app up and running with HTTPS.
            Repository: https://github.com/gauravjot/automating-docker-nginx-server-letsencrypt/tree/docker-nginx-ssl-only

### Application

- Save `Dockerfile` and `nginx.conf` (from [/docker/image](/docker/image)) into your project's home directory.
- Login to Github and navigate to your project's repository. Go to Settings > Secrets > Add Secret:

| Name                     | Value                           |
|--------------------------|---------------------------------|
| DOCKERHUB_TOKEN          | docker-username                 |
| DOCKERHUB_USERNAME       | docker-password                 |
| DEPLOY_SAS_URL           | Azure > Storage accounts > your-storage-account > Shared Access Signature               |

- Go to Actions > New Workflow and copy desired workflows from [/github_actions](/github_actions).
- Workflow if unchanged will run on push to main branch.