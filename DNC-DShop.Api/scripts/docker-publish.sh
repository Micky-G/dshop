#!/bin/bash
DOCKER_TAG=''
DOCKER_USERNAME='michaelgroenewald'
DOCKER_PASSWORD='Nokia6453'
TRAVIS_BRANCH='master'

case "$TRAVIS_BRANCH" in
  "master")
    DOCKER_TAG=latest
    ;;
  "develop")
    DOCKER_TAG=dev
    ;;    
esac

docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker build -t dshop.api:$DOCKER_TAG .
docker tag dshop.api:$DOCKER_TAG $DOCKER_USERNAME/dshop.api:$DOCKER_TAG
docker push $DOCKER_USERNAME/dshop.api:$DOCKER_TAG