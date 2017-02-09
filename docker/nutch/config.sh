docker pull apache/nutch
docker run --name shannutch -d -p 5983:8983 -p 5999:80 -v ~/filesSHAN/:/var/www/html -m 800M --memory-swap -1 -t apache/nutch
docker exec -it shannutch  bash
apt-get update
apt-get install nano -y