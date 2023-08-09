provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "cloudcamp-terraform-state"
}

#terraform {
#  backend "s3" {
#    bucket         = "cloudcamp-terraform-state"
#    key            = "prod-cloudcamp/terraform.tfstate"
#    region         = "us-east-1"
#  }
#}
