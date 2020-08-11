#isInFile=$(cat log.txt | grep -c "FAI*")


#if [ $isInFile -eq 0 ]; then
   #echo "Failure STATUS"
   #exit 1
#else
#fi
   #if [ $isInFile -eq WAR* ];
   #echo "Warning message for code"
#fi
 
 #if grep -xq "FAILURE" log.txt ; then
  # code for if it exists 
  #echo "file exists"
#else
  # code for if it does not exist
#  echo "noooo"
#fi  

#!/bin/bash

declare file="log.txt"
declare regex="WARN"
file_content=$( cat "${file}" )

if [[ " $file_content " =~ $regex ]]
then
 echo -e "found warning deprecated"
 free
echo ""

fi

exit
#else
        #echo "checking failure"

#fi
#exit
    
#if [[ " $file_content " =~ "FAILURE" ]] ; 
#then
#echo "EXITING"


#exit 1
#fi
 
