terraform {
  backend "s3" {
    key            = "terraform.tfstate"
    bucket         = "application1-dev"
    dynamodb_table = "terraform-state-lock-app1dev"
    region         = "us-east-1"
    encrypt        = true
    }
}
