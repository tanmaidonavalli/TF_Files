terraform {
  required_version = "~> 0.12"
  backend "s3" {
    key            = "terraform.tfstate"
    bucket         = "bucketforstatestoring"
    dynamodb_table = "terraform-state-lock-app1dev"
    region = "us-east-1"
    encrypt        = true
  }
}
