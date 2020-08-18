#!/bin/bash
 set -x
 set -e
 terraform init 
 config-lint -terraform .
 terraform workspace new "app1-dev
 terraform init
 terraform validate

if [[ ${EXEC} == "plan" ]]
then
terraform plan -out="app1-dev.tfplan
fi

if [[ ${EXEC} == "apply" ]]
then
terraform apply "app1-dev.tfplan"
rm -f "app1-dev.tfplan"
fi


 terraform plan 
 terraform apply 

                                



 
