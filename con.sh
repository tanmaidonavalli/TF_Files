#!/bin/bash
 
 #terraform init
 #terraform workspace new "app1-dev"
 
 #config-lint -terraform .
 #terraform validate
 #terraform plan -out="app1-dev.tfplan
 #terraform apply "app1-dev.tfplan"
terraform workspace list 
terraform workspace select "app1-dev"  || (terraform workspace new "app1-dev" && terraform workspace select "app1-dev")




                                



 
