terraform {
  required_version = "1.0.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_instance" "web" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  tags          = var.tags
}