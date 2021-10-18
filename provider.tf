provider "aws" {
  secret_key = var.AWS_SECRETKEY
  access_key = var.AWS_PUBLICKEY
  region     = var.AWS_REGION
}
