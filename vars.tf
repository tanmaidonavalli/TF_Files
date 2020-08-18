variable "AMIS" {
    type = "map"
    default = {
        us-east-1 = "ami-085925f297f89fce1"
        us-west-1 = "ami-02c4faee7407cf92e"
        
    }
  
}


variable "aws_access_key" {
  type = string
  description = "AWS access key"
}

variable "aws_secret_key" {
  type = string
  description = "AWS secret key"
}

variable "AWS_REGION" {
    default = "us-east-1"
}

