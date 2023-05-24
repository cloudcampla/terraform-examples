provider "aws" {
  region = "us-east-1"
}

#terraform {
#  required_version = ">= 1.0"
#  required_providers {
#    aws = "~> 4.67"
#  }
#}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

terraform {
  backend "s3" {}
}