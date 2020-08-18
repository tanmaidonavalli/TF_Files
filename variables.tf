variable "name" {
  type        = map
  description = "Name of the project."
  default     = {
    dev  = "app1-dev"
    prod = "app1-prod"
  }
}

variable "aws_region" {
}

variable "env" {
  description = "env: dev or prod"
}

variable "aws_access_key" {
  type = string
  description = "AWS access key"
}

variable "aws_secret_key" {
  type = string
  description = "AWS secret key"
}
