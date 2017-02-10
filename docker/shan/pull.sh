docker run --name shan -d -p 6983:8983 -p 6999:80 -v ~/filesSHAN/:/var/www/html -m 800M --memory-swap -1 -t 889902690013.dkr.ecr.us-east-1.amazonaws.com/shan:latest
docker exec -it shan  bash
