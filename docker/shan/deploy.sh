aws ecr get-login --region us-east-1
docker commit shan shan
docker tag shan:latest 889902690013.dkr.ecr.us-east-1.amazonaws.com/shan:latest
docker push 889902690013.dkr.ecr.us-east-1.amazonaws.com/shan:latest


