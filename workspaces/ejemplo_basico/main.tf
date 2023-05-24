provider "aws" {
  region = lookup(var.aws_region, terraform.workspace)
}

variable "aws_region" {
  default = {
    stage   = "us-east-1"
    production = "us-east-1"
  }
}