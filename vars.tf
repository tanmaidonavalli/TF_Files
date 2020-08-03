variable "AMIS" {
    type = "map"
    default = {
        us-east-1 = "ami-085925f297f89fce1"
        us-west-1 = "ami-02c4faee7407cf92e"
        
    }
  
}
variable "profile" {
   description = "AWS credentials profile you want to use"
}
variable "AWS_REGION" {
    default = "us-east-1"
}
