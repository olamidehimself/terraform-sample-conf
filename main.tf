provider "aws" {
    secret_key = var.AWS_SECRETKEY
    access_key = var.AWS_PUBLICKEY
    region = var.AWS_REGION
}

variable "AWS_REGION" {
  type = string
}

variable "AWS_PUBLICKEY" {
  type = string
}

variable "AWS_SECRETKEY" {
  type = string
}


resource "aws_instance" "testing" {
  ami = "ami-0d7f394c51e3e7d3e"
  instance_type = "t2.micro"
}