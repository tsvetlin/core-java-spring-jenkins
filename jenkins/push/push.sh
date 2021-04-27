#!/bin/bash

echo "****************************"
echo "******** Logging in ********"
echo "****************************"

docker login $DOCKER_REPO_URL -u $DOCKER_USER -p $DOCKER_PASS

echo "****************************"
echo "****** Tagging images ******"
echo "****************************"

docker tag serviceregistry:$BUILD_TAG $DOCKER_USER/serviceregistry:$BUILD_TAG
docker tag authorization:$BUILD_TAG $DOCKER_USER/authorization:$BUILD_TAG
docker tag orchestrator:$BUILD_TAG $DOCKER_USER/orchestrator:$BUILD_TAG
docker tag gatekeeper:$BUILD_TAG $DOCKER_USER/gatekeeper:$BUILD_TAG
docker tag gateway:$BUILD_TAG $DOCKER_USER/gateway:$BUILD_TAG
docker tag eventhandler:$BUILD_TAG $DOCKER_USER/eventhandler:$BUILD_TAG
docker tag certificate-authority:$BUILD_TAG $DOCKER_USER/certificate-authority:$BUILD_TAG
docker tag deviceregistry:$BUILD_TAG $DOCKER_USER/deviceregistry:$BUILD_TAG
docker tag systemregistry:$BUILD_TAG $DOCKER_USER/systemregistry:$BUILD_TAG
docker tag choreographer:$BUILD_TAG $DOCKER_USER/choreographer:$BUILD_TAG


docker tag serviceregistry:$BUILD_TAG $DOCKER_USER/serviceregistry:latest
docker tag authorization:$BUILD_TAG $DOCKER_USER/authorization:latest
docker tag orchestrator:$BUILD_TAG $DOCKER_USER/orchestrator:latest
docker tag gatekeeper:$BUILD_TAG $DOCKER_USER/gatekeeper:latest
docker tag gateway:$BUILD_TAG $DOCKER_USER/gateway:latest
docker tag eventhandler:$BUILD_TAG $DOCKER_USER/eventhandler:latest
docker tag certificate-authority:$BUILD_TAG $DOCKER_USER/certificate-authority:latest
docker tag deviceregistry:$BUILD_TAG $DOCKER_USER/deviceregistry:latest
docker tag systemregistry:$BUILD_TAG $DOCKER_USER/systemregistry:latest
docker tag choreographer:$BUILD_TAG $DOCKER_USER/choreographer:latest

echo "****************************"
echo "** Pushing images to Repo **"
echo "****************************"

docker push $DOCKER_USER/serviceregistry:$BUILD_TAG
docker push $DOCKER_USER/authorization:$BUILD_TAG
docker push $DOCKER_USER/orchestrator:$BUILD_TAG
docker push $DOCKER_USER/gatekeeper:$BUILD_TAG
docker push $DOCKER_USER/gateway:$BUILD_TAG
docker push $DOCKER_USER/eventhandler:$BUILD_TAG
docker push $DOCKER_USER/certificate-authority:$BUILD_TAG
docker push $DOCKER_USER/deviceregistry:$BUILD_TAG
docker push $DOCKER_USER/systemregistry:$BUILD_TAG
docker push $DOCKER_USER/choreographer:$BUILD_TAG

docker push $DOCKER_USER/serviceregistry:latest
docker push $DOCKER_USER/authorization:latest
docker push $DOCKER_USER/orchestrator:latest
docker push $DOCKER_USER/gatekeeper:latest
docker push $DOCKER_USER/gateway:latest
docker push $DOCKER_USER/eventhandler:latest
docker push $DOCKER_USER/certificate-authority:latest
docker push $DOCKER_USER/deviceregistry:latest
docker push $DOCKER_USER/systemregistry:latest
docker push $DOCKER_USER/choreographer:latest