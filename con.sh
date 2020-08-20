#!/bin/bash 
ENV="app1-stage"

terraform workspace list 
terraform workspace select $ENV  || (terraform workspace new $ENV && terraform workspace select $ENV)
workspace=$(terraform workspace show)
echo "current workspace is $workspace"

config-lint -terraform . | tee -a "log.txt"
if [[ "$(cat log.txt | grep -c "FAILURE")" -ne 0 ]]; then
              echo "Failure seen in log file exiting"
 exit 1
 fi

 if [[ "$(cat log.txt | grep -c "WARNING")" -ne 0 ]]; then
          echo "Warning seen in log file. Please check the code"
 else
          echo "Wohooo no errors in config-lint log"
  
  fi
  











