
terraform {
  backend "s3" {
    key            = "terraform.tfstate"
    bucket     = "app1-dev"
    dynamodb_table = "app1-dev"
    region         = "us-east-1"
    encrypt        = true
    }
}

