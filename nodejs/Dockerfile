FROM centos-default

# extract nodejs
RUN yum install -y gcc-c++ make
RUN curl -sL https://rpm.nodesource.com/setup_11.x | bash -
RUN yum install -y nodejs

# symbolic link for projects
RUN ln -s /usr/share/nginx /home/developer/shared

CMD ["bin/bash"]

