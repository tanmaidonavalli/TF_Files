#!/bin/bash
 
 #terraform init
 #terraform workspace new "app1-prepod"
 
 #config-lint -terraform .
 #terraform validate
 #terraform plan -out="app1-dev.tfplan
 #terraform apply "app1-dev.tfplan"
 

terraform workspace list 
terraform workspace select $terraform.workspace  || (terraform workspace new $terraform.workspace && terraform workspace select $terraform.workspace)




                                



 
