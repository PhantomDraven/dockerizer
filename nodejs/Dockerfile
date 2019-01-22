FROM centos:latest

# Creating group www-data
RUN groupadd -g 1000 www-data
# Creating user developer
RUN useradd -G www-data -u 1001 developer

# extract nodejs
RUN yum install -y gcc-c++ make
RUN curl -sL https://rpm.nodesource.com/setup_11.x | bash -
RUN yum install -y nodejs

# symbolic link for projects
RUN ln -s /usr/share/nginx /home/developer/shared

ENV WORKDIR /home/developer
USER developer

CMD ["bin/bash"]

