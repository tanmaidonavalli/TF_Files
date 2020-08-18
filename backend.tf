
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
    bucket     = "${var.project_name}"
    dynamodb_table = "${var.project_name}"
  }
}

resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
 name = "${var.project_name}"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
attribute {
    name = "LockID"
    type = "S"
  }
}
