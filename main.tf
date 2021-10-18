resource "aws_instance" "testing" {
  ami = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
}