#!/bin/bash 
ENV="app1-dev"
ENV="app1-prod"

declare -a StringArray=("app1-dev","app1-prod","app1-staging")
 
# Iterate the string array using for loop
for val in ${StringArray[@]}; do
terraform workspace list 
terraform workspace select $ENV  || (terraform workspace new $ENV && terraform workspace select $ENV)
workspace=$(terraform workspace show)
echo "current workspace is $workspace"
done





#terraform init
 #terraform workspace new "app1-prepod"
 
 #config-lint -terraform .
 #terraform validate
 #terraform plan -out="app1-dev.tfplan
 #terraform apply "app1-dev.tfplan"


                                



 
