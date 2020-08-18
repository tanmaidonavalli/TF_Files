# Create a random id
resource "random_id" "tf_bucket_id" {
  byte_length = 2
}

# Create the bucket
resource "aws_s3_bucket" "tf_code" {
  bucket = "app1-dev"
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
}

terraform {
  backend "s3" {
    
    # Replace this with your bucket name!
    bucket         = "app1-dev"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
     
    }

  }
