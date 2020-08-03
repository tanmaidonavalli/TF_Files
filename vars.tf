variable "AMIS" {
    type = "map"
    default = {
        us-east-1 = "ami-085925f297f89fce1"
        us-west-1 = "ami-02c4faee7407cf92e"
        
    }
  
}
variable "AWS_ACCESS_KEY" {
    default= ""
} 

variable AWS_SECRET_KEY {
    default= ""
}

variable "AWS_REGION" {
    default = "us-east-1"
}
