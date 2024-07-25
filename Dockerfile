FROM ubuntu
WORKDIR	/project
RUN apt-get update -y
RUN apt-get install nginx -y
EXPOSE 90
ADD project /var/www/html
ENTRYPOINT service nginx start && bash
