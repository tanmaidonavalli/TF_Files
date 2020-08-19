
resource "aws_s3_bucket" "bucketdemo" {
  bucket = "bucketdemo"
  region = "us-east-2"
  force_destroy = true
  
  tags = local.common_tags
}
