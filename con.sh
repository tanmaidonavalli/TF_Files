    #!/bin/bash
filename="log.txt"

readarray -t lines <<< "$(sed -n '/FAIL*/,/Fai/p' "$filename")"

for line in "${lines[@]}"; do

     : # Do all your additional processing here, with a clean input.
 echo "Failure"
done 
 

 
