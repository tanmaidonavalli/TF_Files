#!/bin/bash
terraform workspace new demo
terraform init &&
config-lint -terraform . >log.txt
if [[ "$(cat log.txt | grep -c "FAILURE")" -ne 0 ]]; then
              echo "Failure seen in log file exiting"
 exit 1
 fi

 if [[ "$(cat log.txt | grep -c "WARNING")" -ne 0 ]]; then
          echo "Warning seen in log file. Please check the code"
 else
          echo "Wohooo no errors in config-lint log"
  
  fi
 terraform plan 
 terraform apply 

                                



 
