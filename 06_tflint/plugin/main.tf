provider "aws" {
  region  = "us-east-1"
}

locals {
  instance-type = "t2.micro"
}

terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.10.0"
    }
  }
}

resource "aws_instance" "cloudcamp" {
  ami           = "${"ami-0261755bbcb8c4a84"}"
  instance_type = local.instance-type
  tags = {
    bootcamp = "devops"
  }
}









# Pista

#terraform {
#  required_version = ">= 1.0"
#  required_providers {
#    aws = {
#      source  = "hashicorp/aws"
#      version = "~> 5.10.0"
#    }
#  }
#}