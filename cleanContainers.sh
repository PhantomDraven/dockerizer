echo "Removing containers"
docker rm $(docker ps -aq)