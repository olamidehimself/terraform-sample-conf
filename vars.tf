variable "AWS_REGION" {
  type = string
}

variable "AWS_PUBLICKEY" {
  type = string
}

variable "AWS_SECRETKEY" {
  type = string
}

variable "AMIS" {
  type = map
  default = {
    eu-west-1 = "ami-0d7f394c51e3e7d3e"
    eu-west-2 = "ami-0553c8e502a474394"
    eu-west-3 = "ami-0a5af2e535910d7e3"
  }
}