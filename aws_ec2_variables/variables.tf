variable "environment" {
  type        = string
  description = ""
}

variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "terraform-teste"
}

variable "ec2_ami" {
  type        = string
  description = ""
  default     = "ami-0c2b8ca1dad447f8a"
}

variable "ec2_instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}

variable "tags" {
  type        = map(string)
  description = ""
  default = {
    "Name"    = "Ubuntu"
    "Project" = "Curso AWS com Terraform"
  }
}