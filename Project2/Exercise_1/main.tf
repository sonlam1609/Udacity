# TODO: Designate a cloud provider, region, and credentials
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.32.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
  access_key = "AKIAYLQOIA2ZP75BXHHY"
  secret_key = "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"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "t2_instances" {
  count           = "4"
  ami             = "ami-0ee23bfc74a881de5"
  instance_type   = "t2.micro"
  subnet_id       = "subnet-007015f8f39dd28d6"
  tags = {
    Name          = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "m4_instances" {
 count         = 2
 ami           = "ami-0ee23bfc74a881de5"
 instance_type = "m4.large"
 subnet_id     = "subnet-007015f8f39dd28d6"
 tags = {
   "Name"    = "Udacity M4"
 }
}