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

# Copy the Certificate Authority jar to the build location
rm -rf $WORKSPACE/jenkins/build/certificate-authority
mkdir $WORKSPACE/jenkins/build/certificate-authority
cp -f $WORKSPACE/certificate-authority/target/*.jar $WORKSPACE/jenkins/build/certificate-authority

# Copy the Device Registry jar the build location
rm -rf $WORKSPACE/jenkins/build/deviceregistry
mkdir $WORKSPACE/jenkins/build/deviceregistry
cp -f $WORKSPACE/deviceregistry/target/*.jar $WORKSPACE/jenkins/build/deviceregistry

# Copy the System Registry jar to the build location
rm -rf $WORKSPACE/jenkins/build/systemregistry
mkdir $WORKSPACE/jenkins/build/systemregistry
cp -f $WORKSPACE/systemregistry/target/*.jar $WORKSPACE/jenkins/build/systemregistry

# Copy the Choreographer jar to the build location
rm -rf $WORKSPACE/jenkins/build/choreographer
mkdir $WORKSPACE/jenkins/build/choreographer
cp -f $WORKSPACE/choreographer/target/*.jar $WORKSPACE/jenkins/build/choreographer

# Copy the Datamanager jar to the build location
rm -rf $WORKSPACE/jenkins/build/datamanager
mkdir $WORKSPACE/jenkins/build/datamanager
cp -f $WORKSPACE/datamanager/target/*.jar $WORKSPACE/jenkins/build/datamanager

# Copy the Translator jar to the build location
rm -rf $WORKSPACE/jenkins/build/translator
mkdir $WORKSPACE/jenkins/build/translator
cp -f $WORKSPACE/translator/target/*.jar $WORKSPACE/jenkins/build/translator

echo "****************************"
echo "** Building Docker Images **"
echo "****************************"

cd $WORKSPACE/jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache