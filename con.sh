
#!/bin/bash
config-lint -terraform . >log.txt
if [[ "$(cat log.txt | grep -c "FAILURE")" -ne 0 ]]; then
              echo "$(tput setaf 1)Failure seen in log file exiting"
 exit 1
 fi

 if [[ "$(cat log.txt | grep -c "WARNING")" -ne 0 ]]; then
          echo "$(tput setaf 1)Warning seen in log file. Please check the code"
 else
          echo "$(tput setaf 1)Wohooo no errors in config-lint log"
  
  fi


 
