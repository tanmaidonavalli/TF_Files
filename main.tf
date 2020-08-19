
resource "aws_s3_bucket" "bucketdemo" {
  bucket = "bucketdemo"
  region = "${lookup(local.region, local.environment)}"
  force_destroy = true
  
  tags = local.common_tags
}
