sudo echo $(date "+%F %H:%M:%S")
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# sudo docker run -it --rm -d -p 8080:80 --name web1 nginx:alpine
# sudo docker ps
# sudo docker exec -ti web1 sh
