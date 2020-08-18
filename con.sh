#!/bin/bash
 set -x
 set -e
 ENV="${1}"
 EXEC="${2}"
 terraform init 
 config-lint -terraform .
 terraform workspace new "${ENV}" && terraform workspace select "${ENV}"
 terraform init
 terraform validate

if [[ ${EXEC} == "plan" ]]
then
terraform plan -var-file="${ENV}.tfvars" -out="${ENV}.tfplan"
fi

if [[ ${EXEC} == "apply" ]]
then
terraform apply "${ENV}.tfplan"
rm -f "${ENV}.tfplan"
fi


 terraform plan 
 terraform apply 

                                



 
