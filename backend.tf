
terraform {
  backend "s3" {
    key            = "terraform.tfstate"
    bucket     = ""
    dynamodb_table = "terraform-state-lock-app1dev"
    region         = "us-east-1"
    encrypt        = true
    }
}

