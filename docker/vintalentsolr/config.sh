docker run --name vintalentsolr -d -p 8983:8983 -p 9999:80 -v ~/files/:/var/www/html -m 800M --memory-swap -1 -t shan
docker exec -it --user root vintalentsolr  bash
apt-get update
apt-get install apache2 -y
service apache2 start
chmod 777 -R /var/www/html
exit
docker exec -it vintalentsolr  bash
cd /opt/solr
bin/solr create -c files -d example/files/conf
bin/post -c files /var/www/html
