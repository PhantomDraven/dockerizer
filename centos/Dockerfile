FROM centos:latest

# Creating group www-data
RUN groupadd -g 1000 www-data
# Creating user developer
RUN useradd -G www-data,wheel -u 1001 developer
RUN usermod -g www-data developer

RUN yum install sudo -y

RUN echo "developer ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers 

ENV WORKDIR /home/developer
USER developer

CMD ["bin/bash"]