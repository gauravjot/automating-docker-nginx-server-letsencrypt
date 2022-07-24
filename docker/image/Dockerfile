FROM nginx:1.23.0
COPY nginx.conf /etc/nginx/sites_available/
RUN apt-get update
RUN apt-get install -y git
RUN git clone -b barebone https://github.com/gauravjot/automate-projectincloud-deployment.git
RUN cp -R automate-projectincloud-deployment/* /usr/share/nginx/html/
EXPOSE 80/tcp