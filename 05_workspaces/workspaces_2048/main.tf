provider "aws" {
  region  = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "cloudcamp-terraform-state-001"
    key    = "workspaces_2048/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "cloudcamp-ddb-lock"
    encrypt = true
  }
}
