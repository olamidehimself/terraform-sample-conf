resource "aws_key_pair" "ubuntu_key" {
  key_name   = "terraform_ubuntu"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}
resource "aws_instance" "testing" {
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
  key_name      = aws_key_pair.ubuntu_key.key_name

  provisioner "file" {
    source = "deployer.sh"
    destination = "/home/ubuntu/deployer.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /home/ubuntu/deployer.sh",
      "sudo /home/ubuntu/deployer.sh"
    ]
  }

  connection {
    user        = var.EC2_USERNAME
    private_key = file(var.PATH_TO_PRIVATE_KEY)
    host        = self.public_ip
    type = "ssh"
  }
}