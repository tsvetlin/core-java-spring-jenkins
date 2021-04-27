#!/bin/bash

WORKSPACE=/var/jenkins_home/workspace/Arrowhead/Arrowhead_Core_Spring

# Copy the SR jar to the build location
rm -rf $WORKSPACE/jenkins/build/serviceregistry
mkdir $WORKSPACE/jenkins/build/serviceregistry
cp -f $WORKSPACE/serviceregistry/target/*.jar $WORKSPACE/jenkins/build/serviceregistry
# cp -f serviceregistry/target/*.properties jenkins/build/serviceregistry

# Copy the Auth jar to the build location
rm -rf $WORKSPACE/jenkins/build/authorization
mkdir $WORKSPACE/jenkins/build/authorization
cp -f $WORKSPACE/authorization/target/*.jar $WORKSPACE/jenkins/build/authorization
# cp -f authorization/target/*.properties jenkins/build/authorization

# Copy the ORCH jar to the build location
rm -rf $WORKSPACE/jenkins/build/orchestrator
mkdir $WORKSPACE/jenkins/build/orchestrator
cp -f $WORKSPACE/orchestrator/target/*.jar $WORKSPACE/jenkins/build/orchestrator
# cp -f orchestrator/target/*.properties jenkins/build/orchestrator

# Copy the Gatekeeper jar to the build location
rm -rf $WORKSPACE/jenkins/build/gatekeeper
mkdir $WORKSPACE/jenkins/build/gatekeeper
cp -f $WORKSPACE/gatekeeper/target/*.jar $WORKSPACE/jenkins/build/gatekeeper
# cp -f gatekeeper/target/*.properties jenkins/build/gatekeeper

# Copy the Gateway jar to the build location
rm -rf $WORKSPACE/jenkins/build/gateway
mkdir $WORKSPACE/jenkins/build/gateway
cp -f $WORKSPACE/gateway/target/*.jar $WORKSPACE/jenkins/build/gateway
# cp -f gateway/target/*.properties jenkins/build/gateway

# Copy the Event Handler jar to the build location
rm -rf $WORKSPACE/jenkins/build/eventhandler
mkdir $WORKSPACE/jenkins/build/eventhandler
cp -f $WORKSPACE/eventhandler/target/*.jar $WORKSPACE/jenkins/build/eventhandler
# cp -f eventhandler/target/*.properties jenkins/build/eventhandler

echo "****************************"
echo "** Building Docker Images **"
echo "****************************"

cd $WORKSPACE/jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache