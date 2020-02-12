REM dotnet restore
dotnet restore

REM dotnet publish
dotnet publish -c Release -o src\DShop.Services.Operations\bin\docker

REM Login to docker
docker login

REM Build the docker image 
docker build -f Dockerfile.k8s -t michaelgroenewald/k8s.dshop.services.operations .

REM Push docker image to the Docker Hub
docker push michaelgroenewald/k8s.dshop.services.operations:latest