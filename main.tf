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
 name = "terraform-state-lock-app1dev"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
attribute {
    name = "LockID"
    type = "S"
  }
}

