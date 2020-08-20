#!/bin/bash
 
 #terraform init
 #terraform workspace new "app1-prepod"
 
 #config-lint -terraform .
 #terraform validate
 #terraform plan -out="app1-dev.tfplan
 #terraform apply "app1-dev.tfplan"
 
ENV="app1-dev"
ENV="app1-prod"


terraform workspace list 
terraform workspace select $ENV  || (terraform workspace new $ENV && terraform workspace select $ENV)
workspace=$(terraform workspace show)
echo "current workspace is $workspace"





                                



 
