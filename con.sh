#!/bin/bash
 
 #terraform init
 #terraform workspace new "app1-dev"
 
 #config-lint -terraform .
 #terraform validate
 #terraform plan -out="app1-dev.tfplan
 #terraform apply "app1-dev.tfplan"
terraform workspace list 
(terraform workspace new "app1-prod" && terraform workspace select "app1-prod") || terraform workspace select "app1-dev" 




                                



 
