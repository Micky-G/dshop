REM dotnet restore
dotnet restore

REM dotnet publish
dotnet publish -c Release -o src\DShop.Services.Orders\bin\docker

REM Login to docker
docker login

REM Build the docker image 
docker build -f Dockerfile -t michaelgroenewald/k8s.dshop.services.orders .

REM Push docker image to the Docker Hub
docker push michaelgroenewald/k8s.dshop.services.orders:latest