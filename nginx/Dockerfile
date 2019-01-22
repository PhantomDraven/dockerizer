FROM centos:latest

ARG type

# Creating group www-data
RUN groupadd -g 1000 www-data
# Creating user developer
RUN useradd -G www-data,wheel -u 1001 developer

# installing Nginx
RUN yum install epel-release -y
RUN yum install nginx -y 

# setting nginx to have more privileges on log and pid
RUN chown -R nginx:www-data /var/log/nginx
RUN touch /var/run/nginx.pid
RUN chown -R nginx:www-data /var/run/nginx.pid

# privileges of projects
RUN chown -R nginx:www-data /usr/share/nginx
RUN chmod 664 -R /usr/share/nginx

# symbolic link for logs
RUN ln -s /var/log/nginx /home/developer/log_nginx
# symbolic link for projects
RUN ln -s /usr/share/nginx /home/developer/shared

# copy nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# copy localhost config
COPY localhost.$type.conf /etc/nginx/conf.d/localhost.conf

# set environment variables
ENV WORKDIR /home/developer
USER developer

CMD ["bin/bash", "/usr/bin/nginx"]