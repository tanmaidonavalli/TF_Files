

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
 name = "app1-dev"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  
  attribute {
    name = "LockID"
    type = "S"
  }
}



