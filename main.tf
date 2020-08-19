
resource "aws_s3_bucket" "bucket" {
  bucket = local.name_prefix
  acl    = "private"
  force_destroy = true
  versioning {
    enabled = true
  }
  tags = local.common_tags
}

resource "aws_instance" "instance1" {
  ami = "ami-085925f297f89fce1"
  instance_type = "t2.micro"
  

  tags = {
      Name = "tinstance"
  }
}

