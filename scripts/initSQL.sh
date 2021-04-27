#!/bin/bash

rm -rf sql

mkdir sql
cd sql
wget https://raw.githubusercontent.com/tsvetlin/core-java-spring-jenkins/master/scripts/create_empty_arrowhead_db.sql
sed -i 's/source /& docker-entrypoint-initdb.d\/privileges\//g' create_empty_arrowhead_db.sql

mkdir privileges
cd privileges
wget https://raw.githubusercontent.com/tsvetlin/core-java-spring-jenkins/master/scripts/create_arrowhead_tables.sql
wget https://raw.githubusercontent.com/tsvetlin/core-java-spring-jenkins/master/scripts/service_registry_privileges.sql
wget https://raw.githubusercontent.com/tsvetlin/core-java-spring-jenkins/master/scripts/authorization_privileges.sql
wget https://raw.githubusercontent.com/tsvetlin/core-java-spring-jenkins/master/scripts/orchestrator_privileges.sql
wget https://raw.githubusercontent.com/tsvetlin/core-java-spring-jenkins/master/scripts/event_handler_privileges.sql
wget https://raw.githubusercontent.com/tsvetlin/core-java-spring-jenkins/master/scripts/choreographer_privileges.sql
wget https://raw.githubusercontent.com/tsvetlin/core-java-spring-jenkins/master/scripts/gatekeeper_privileges.sql
wget https://raw.githubusercontent.com/tsvetlin/core-java-spring-jenkins/master/scripts/gateway_privileges.sql
wget https://raw.githubusercontent.com/tsvetlin/core-java-spring-jenkins/master/scripts/certificate_authority_privileges.sql
wget https://raw.githubusercontent.com/tsvetlin/core-java-spring-jenkins/master/scripts/system_registry_privileges.sql
wget https://raw.githubusercontent.com/tsvetlin/core-java-spring-jenkins/master/scripts/device_registry_privileges.sql
wget https://raw.githubusercontent.com/tsvetlin/core-java-spring-jenkins/master/scripts/onboarding_controller_privileges.sql
