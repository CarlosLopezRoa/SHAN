docker build -t shan .
docker run --name shan -d -p 6983:8983 -p 6999:80 -v ~/filesSHAN/:/var/www/html -m 800M --memory-swap -1 -t shan
docker exec -it --user root shan  bash
apt-get update -y
apt-get install apache2 -y
service apache2 start
chmod 777 -R /var/www/html
exit
docker exec -it shan  bash
