FROM nginx:1.23.0
COPY nginx-temp.conf /etc/nginx/sites_available/
RUN apt-get update
RUN apt-get install -y git
RUN git clone https://github.com/gauravjot/cool-css.git
RUN cp -R cool-css/* /usr/share/nginx/html/
EXPOSE 80/tcp

# Nodejs if need to build the project. Bigger image size.
# FROM nginx:1.23.0
# COPY nginx-temp.conf /etc/nginx/sites_available/
# RUN apt-get update
# RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
# RUN apt-get install -y nodejs git
# RUN git clone https://github.com/gauravjot/cool-css.git
# WORKDIR cool-css
# RUN npm install
# RUN npm run-script build
# RUN cp -R ./build/* /usr/share/nginx/html/
# EXPOSE 80/tcp