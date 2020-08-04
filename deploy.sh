#!/bin/bash

set -euo pipefail

https://github.com/tanmaidonavalli/TF_Files/blob/master/Dockerfile

#Build Image
$docker build -t tfimage:latest .

#Create Container
$docker run -it -d --name tfcontainer tfimage:latest /bin/bash

#login to container
$docker exec -it tfcontainer /bin/bash


$terraform --version

aws configure -u $aws_access_key_id -p $aws_secret_access_key --output none

#Intialize the folder
$terraform init -no-color -upgrade=true -backend-config="storage_account_name=$S3Bucket_name"

#Run config-lint
$config-lint -terraform TF_Files

$terraform plan -no-color -out=tfplan | tee plan.output 

if [[ "${FORCE:-false}" == "true" ]];
   
    then
        
      $terraform apply -no-color tfplan

        else

        echo "##vso[task.logissue type=error]Please check the terraform plan and approve destruction of resource(s) by setting release variable FORCE to true!"
        exit 1
fi




