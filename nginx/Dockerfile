FROM centos-default

ARG type

# installing Nginx
RUN sudo yum install epel-release -y
RUN sudo yum install nginx -y 

# setting nginx to have more privileges on log and pid
RUN sudo chown -R nginx:www-data /var/log/nginx
RUN sudo touch /var/run/nginx.pid
RUN sudo chown -R nginx:www-data /var/run/nginx.pid

# privileges of projects
RUN sudo chown -R nginx:www-data /usr/share/nginx
RUN sudo chmod 664 -R /usr/share/nginx

# symbolic link for logs
RUN ln -s /var/log/nginx /home/developer/log_nginx
# symbolic link for projects
RUN ln -s /usr/share/nginx /home/developer/shared

# copy nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# copy localhost config
COPY localhost.$type.conf /etc/nginx/conf.d/localhost.conf

CMD ["bin/bash", "/usr/bin/nginx"]