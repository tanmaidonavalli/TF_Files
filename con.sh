isInFile=$(cat log.txt | grep -c "FAILURE")


if [ $isInFile -eq 0 ]; then
   echo "string not contained in file"
else
   "string is in file at least once"
fi
 

 
