isInFile=$(cat log.txt | grep -c "FAI*")


if [ $isInFile -eq FAI* ]; then
   echo "Failure STATUS"
   exit 1
else
   if [ $isInFile -eq WAR* ];
   echo "Warning message for code"
fi
 

 
