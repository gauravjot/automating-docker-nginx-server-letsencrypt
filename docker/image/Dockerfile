# This Dockerfile and nginx.conf file should be placed witihn project and
# is used in github actions workflow: 
# github_actions/nodejs_docker_push_workflow.yaml
# to generate docker image and push to dockerhub

FROM nginx:1.23.0
COPY nginx.conf /etc/nginx/sites_available/
COPY build/ /usr/share/nginx/html/
EXPOSE 80/tcp