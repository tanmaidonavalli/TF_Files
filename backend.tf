
terraform {
  backend "s3" {
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    }
}

data "terraform_remote_state" "state" {
  backend = "s3"
  config {
    bucket     = "app1-dev"
    dynamodb_table = "app1-dev"
  }
}

resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
 name = var.name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  
  attribute {
    name = "LockID"
    type = "S"
  }
}
