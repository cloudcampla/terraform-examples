variable "aws_region" {
  default = {
    default   = "us-west-2"
    production = "us-east-1"
  }
}

provider "aws" {
  region = lookup(var.aws_region, terraform.workspace)
}