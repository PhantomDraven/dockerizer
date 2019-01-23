FROM centos:latest

# Creating group www-data
RUN groupadd -g 999 www-data
# Creating user developer
RUN useradd -G www-data,wheel -u 1000 developer

ENV WORKDIR /home/developer
USER developer

CMD ["bin/bash"]