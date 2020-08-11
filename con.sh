
#!/bin/bash
config-lint -terraform . >log.txt
if [[ "$(cat log.txt | grep -c "FAILURE")" -ne 0 ]]; then
              echo "failure seen in log file exiting"
 exit1
 fi

 if [[ "$(cat log.txt | grep -c "WARNING")" -ne 0 ]]; then
          echo "warning seen in log file. Please check the code"
 else
          echo "wohooo"
  fi


 
