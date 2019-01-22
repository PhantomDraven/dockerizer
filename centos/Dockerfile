FROM centos:latest

# Creating group www-data
RUN groupadd -g 1000 www-data
# Creating user developer
RUN useradd -G www-data -u 1001 developer

ENV WORKDIR /home/developer
USER developer

CMD ["bin/bash"]