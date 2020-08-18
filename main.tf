# Declare the aws provider

  

# Create a random id
resource "random_id" "tf_bucket_id" {
  byte_length = 2
}

# Create the bucket
resource "aws_s3_bucket" "tf_code" {
  bucket = "${lookup(var.project_name, var.env)}-${random_id.tf_bucket_id.dec}"
  acl    = "private"

  force_destroy = true

  tags = {
    Name = "tf_bucket"
  }
}

resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
attribute {
    name = "LockID"
    type = "S"
  }
tags {
    Name = "DynamoDB Terraform State Lock Table"
  }
}

# store tfstate in s3 and locking information in DynamoDB
terraform {
  backend "s3" {
    encrypt = true
    # cannot contain interpolations
    # bucket = "${aws_s3_bucket.terraform-state-storage-s3.bucket}"
    bucket = "app1-dev-44207"
    # region = "${aws_s3_bucket.terraform-state-storage-s3.region}"
    region = ""
    # dynamodb_table = "example-iac-terraform-state-lock-dynamo"
    key = "terraform-state/terraform.tfstate"
  }
}
