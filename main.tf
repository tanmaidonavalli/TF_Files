
resource "aws_s3_bucket" "bucketdemo" {
  bucket = "bucketdemo"
  region = "us-west-1"
  force_destroy = true
  
  tags = local.common_tags
}
