
resource "aws_s3_bucket" "bucketdemo" {
  bucket = "bucketdemo"
  region = local.region
  force_destroy = true
  
  tags = local.common_tags
}
