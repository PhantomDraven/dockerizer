FROM centos-default

# extract nodejs
RUN sudo yum install -y gcc-c++ make
RUN sudo curl -sL https://rpm.nodesource.com/setup_11.x | sudo bash -
RUN sudo yum install -y nodejs

# installing yarn global
RUN sudo npm i -g yarn

# symbolic link for projects
RUN ln -s /usr/share/nginx /home/developer/shared

CMD ["bin/bash"]

