#!/bin/bash

 echo "****************************"
 echo "** Copying property files **"
 echo "****************************"

# Copy the preconfigured core system property files to their location
WORKSPACE=/var/jenkins_home/workspace/Arrowhead/Arrowhead_Core_Spring

# Service Registry
rm -f $WORKSPACE/serviceregistry/src/main/resources/application.properties
cp -f /var/core_system_config/serviceregistry.properties $WORKSPACE/serviceregistry/src/main/resources/application.properties

# Authorization
rm -f $WORKSPACE/authorization/src/main/resources/application.properties
cp -f /var/core_system_config/authorization.properties $WORKSPACE/authorization/src/main/resources/application.properties

# Orchestration
rm -f $WORKSPACE/orchestrator/src/main/resources/application.properties
cp -f /var/core_system_config/orchestrator.properties $WORKSPACE/orchestrator/src/main/resources/application.properties

# Gatekeeper
rm -f $WORKSPACE/gatekeeper/src/main/resources/application.properties
cp -f /var/core_system_config/gatekeeper.properties $WORKSPACE/gatekeeper/src/main/resources/application.properties

# Gateway
rm -f $WORKSPACE/gateway/src/main/resources/application.properties
cp -f /var/core_system_config/gateway.properties $WORKSPACE/gateway/src/main/resources/application.properties

# Event Handler
rm -f $WORKSPACE/eventhandler/src/main/resources/application.properties
cp -f /var/core_system_config/eventhandler.properties $WORKSPACE/eventhandler/src/main/resources/application.properties

# Certificate Authority
rm -f $WORKSPACE/certificate-authority/src/main/resources/application.properties
cp -f /var/core_system_config/certificateauthority.properties $WORKSPACE/certificate-authority/src/main/resources/application.properties

# Onboarding Controller
rm -f $WORKSPACE/onboarding/src/main/resources/application.properties
cp -f /var/core_system_config/onboardingcontroller.properties $WORKSPACE/onboarding/src/main/resources/application.properties

# Device Registry
rm -f $WORKSPACE/deviceregistry/src/main/resources/application.properties
cp -f /var/core_system_config/deviceregistry.properties $WORKSPACE/deviceregistry/src/main/resources/application.properties

# System Registry
rm -f $WORKSPACE/systemregistry/src/main/resources/application.properties
cp -f /var/core_system_config/systemregistry.properties $WORKSPACE/systemregistry/src/main/resources/application.properties

# Choreographer
rm -f $WORKSPACE/choreographer/src/main/resources/application.properties
cp -f /var/core_system_config/choreographer.properties $WORKSPACE/choreographer/src/main/resources/application.properties

# Datamanager
rm -f $WORKSPACE/datamanager/src/main/resources/application.properties
cp -f /var/core_system_config/datamanager.properties $WORKSPACE/datamanager/src/main/resources/application.properties

# Translator
rm -f $WORKSPACE/translator/src/main/resources/application.properties
cp -f /var/core_system_config/translator.properties $WORKSPACE/translator/src/main/resources/application.properties