#!/bin/bash
# This script takes 2 inputs, an ENV, and a Terraform execution command (plan or apply).
# It is a wrapper script to be used in conjunction with a CI component and
# programmatically run the Terraform tools for managing infrastructure.


# Echo commands in the shell
set -x
set -e

# Set variables
ENV="${1}"
EXEC="${2}"

### Select Environment
cd environments/${ENV}

### Terraform
terraform --version
terraform init
terraform workspace select "${ENV}" || (terraform workspace new "${ENV}" && terraform workspace select "${ENV}")
terraform init
terraform validate

if [[ ${EXEC} == "plan" ]]
then
terraform plan -var-file="${ENV}.tfvars" -out="${ENV}.tfplan"
fi

if [[ ${EXEC} == "apply" ]]
then
terraform apply "${ENV}.tfplan"
rm -f "${ENV}.tfplan"
fi


