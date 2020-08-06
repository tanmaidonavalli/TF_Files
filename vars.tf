variable "access_key" {
   description = "AWS credentials profile you want to use"
   type        = "string"
   default     = ""
}

variable "secret_key" {
 description = "AWS secretkey"
   type        = "string"
  default     = ""
 }

variable "AMIS" {
    type = "map"
    default = {
        us-east-1 = "ami-085925f297f89fce1"
        us-west-1 = "ami-02c4faee7407cf92e"
        
    }
  
}
variable "AWS_REGION" {
    default = "us-east-1"
}

