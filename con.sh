#!/bin/bash

terraform init 
 config-lint -terraform .
 terraform plan 
 terraform apply 

                                



 
