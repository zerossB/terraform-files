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
  region  = "us-east-1"
  profile = "terraform-teste"
}

resource "aws_s3_bucket" "mu-test-bucket" {
  bucket = "my-tf-test-bucket-dohaynes"
  acl    = "private"

  tags = {
    "Name"        = "My Bucket"
    "Environment" = "develop"
  }
}
