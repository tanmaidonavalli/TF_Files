#!/bin/bash
 
 #terraform init
 #terraform workspace new "app1-dev"
 
 #config-lint -terraform .
 #terraform validate
 #terraform plan -out="app1-dev.tfplan
 #terraform apply "app1-dev.tfplan"
 
 env='app1-dev'
terraform workspace list 
terraform workspace select "${ENV}"  || (terraform workspace new "${ENV}" && terraform workspace select "${ENV}")




                                



 
