terraform {
  backend "s3" {
    bucket         = "app1-dev-12795"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    #dynamodb_table = "terraform-state-lock-app1dev"
    encrypt        = true
  }
}
