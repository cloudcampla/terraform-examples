provider "aws" {
  region = "us-east-1"
}

#resource "aws_s3_bucket" "terraform_state_bucket" {
#  bucket = "cloudcamp-terraform-state"
#}

resource "aws_s3_bucket_versioning" "terraform_state_versioning" {
  bucket = "cloudcamp-terraform-state-001"
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name           = "cloudcamp-ddb-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

terraform {
  backend "s3" {
    bucket         = "cloudcamp-terraform-state-001"
    key            = "stage-cloudcamp/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "cloudcamp-ddb-lock"
  }
}

resource "aws_instance" "cloudcamp" {
  ami = "ami-0889a44b331db0194"
  instance_type = "t2.micro"
  tags = {
    bootcamp = "devops"
    Name= "DisneyPlus"
  }
}

#resource "time_sleep" "wait" {
#  create_duration = "300s"
#}
