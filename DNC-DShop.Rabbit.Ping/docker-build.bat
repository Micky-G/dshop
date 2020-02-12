REM Login to docker
docker login

REM Build the docker image 
docker build -f Dockerfile -t michaelgroenewald/k8s.dshop.rabbit-ping:latest .

REM Push docker image to the Docker Hub
docker push michaelgroenewald/k8s.dshop.rabbit-ping:latest