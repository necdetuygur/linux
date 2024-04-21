sudo echo $(date "+%F %H:%M:%S")

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# sudo docker run -it --rm -d -p 8080:80 --name web1 nginx:alpine
# sudo docker ps
# sudo docker exec -ti web1 sh

# sudo docker rm -v -f $(sudo docker ps -qa)
# sudo docker rm -vf $(sudo docker ps -aq)
# sudo docker rmi -f $(sudo docker images -aq)
# sudo docker rmi $(sudo docker images -a)
# sudo docker rm $(sudo docker ps -a -f status=exited -q)
# sudo docker rm $(sudo docker ps -a -f status=created -q)
# sudo docker system prune -a --volumes
