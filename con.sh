#!/bin/bash 
ENV="app1-stage"
config-lint -terraform .
terraform workspace list 
terraform workspace select $ENV  || (terraform workspace new $ENV && terraform workspace select $ENV)
workspace=$(terraform workspace show)
echo "current workspace is $workspace"










#config-lint -terraform .




#terraform init
 #terraform workspace new "app1-prepod"
 
 
 #terraform validate
 #terraform plan -out="app1-dev.tfplan
 #terraform apply "app1-dev.tfplan"


                                



 
