
resource "aws_s3_bucket" "bucketdemo" {
  bucket = "bucketdemo"
  force_destroy = true
  
  tags = local.common_tags
}
