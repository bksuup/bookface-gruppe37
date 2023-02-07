sudo docker run --name bookface1 -p 49001:80 -it -d -v /home/ubuntu/bookface/code:/var/www/html bookface:v1
sudo docker run --name bookface2 -p 49002:80 -it -d -v /home/ubuntu/bookface/code:/var/www/html bookface:v1
