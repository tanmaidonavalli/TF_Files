#!/bin/bash
 
 #terraform init
 #terraform workspace new "app1-prepod"
 
 #config-lint -terraform .
 #terraform validate
 #terraform plan -out="app1-dev.tfplan
 #terraform apply "app1-dev.tfplan"
 
ENV="app1-preprod"
#ENV=(app1-prod,app1-dev,app1-uat,app1-stage)

terraform workspace list 
terraform workspace select $ENV  || (terraform workspace new $ENV && terraform workspace select $ENV)
workspace=$(terraform workspace show)
echo "current workspace is $workspace"
tfvars_file="$workspace.tfvars"
if test -f $tfvars_file; then
echo "found $tfvard_file, applying"
terraform apply -var-file=$workspace.tfvars
else echo "cannot find $tfvars_file"
fi




                                



 
