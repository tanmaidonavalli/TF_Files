resource "aws_s3_bucket" "b1" {
  bucket = "test-bucket-1"

 
  tags = {
    "Department" = "invalid"
  }
}
