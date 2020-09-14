#!/bin/bash 
#Use environment variables when integrating with CI/CD 
ENV="app1-dev"

terraform workspace list 
terraform workspace select $ENV  || (terraform workspace new $ENV && terraform workspace select $ENV)
workspace=$(terraform workspace show)
echo "current workspace is $workspace"

config-lint -terraform . | tee -a "log.txt"
if [[ "$(cat log.txt | grep -c "FAILURE")" -ne 0 ]]; then
              echo "EXITING BECAUSE FAILURE IN CONFIG-LINT LOG FILE"
 exit 1
 fi

 if [[ "$(cat log.txt | grep -c "WARNING")" -ne 0 ]]; then
          echo "WARNING SEEN IN LOG FILE. PLEASE CHECK THE CODE"
 else
          echo "NO ERRORS IN LOG FILE"
  
  fi
  











