# PRIMER DOCKERFILE


# FROM debian:latest
# RUN apt-get update #&&
# RUN apt-get install -y apache2 #&&
# RUN apt-get clean
# RUN rm -rf /var/lib/apt/lists/*
# ENV APACHE_RUN_USER www-data
# ENV APACHE_RUN_GROUP www-data
# ENV APACHE_LOG_DIR /var/log/apache2
# EXPOSE 80
# ADD ["index.html", "/var/www/html/"]
# ENTRYPOINT ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]

# FROM ubuntu:latest
# RUN apt update
# RUN apt install -y nginx
# ADD file.tar /usr/share/nginx/html
# # ADD file.tar .
# ADD scripts /usr/share/nginx/html
# COPY *.html /usr/share/nginx/html
# COPY nginx.conf /etc/nginx
# EXPOSE 80
# CMD [ "nginx", "-g", "daemon off" ]

# FROM ubuntu:latest
# RUN apt update
# RUN apt install -y nginx
# ADD file.tar.gz /var/www/html
# # ADD file.tar .
# #ADD scripts /var/www/html
# COPY *.html /var/www/html
# COPY nginx.conf /etc/nginx
# EXPOSE 80
# CMD [ "nginx", "-g", "daemon off" ]


# FROM python:3.11-alpine
# LABEL author="Adam"
# LABEL version="1.0.1"
# RUN apt update
# RUN apt install -y nginx
# ADD file.tar .
# COPY . /app
# WORKDIR /app
# RUN pip install -r requirements.txt
# EXPOSE 8080
# ENTRYPOINT ["python"]
# CMD [ "nginx", "-g", "daemon off" ]

# FROM python:3.9-slim
# WORKDIR /app
# COPY script.py .
# COPY args.py .
# ENTRYPOINT [ "python" ]
# CMD [ "args.py","juan" ]

FROM ubuntu
RUN apt update
COPY . .
ENTRYPOINT [ "/bin/bash" ]

#coses de bind mount 
# docker build -t flask . (esta linea potser no esta be)
# docker run -v "$(pwd)/src/:/" flask

