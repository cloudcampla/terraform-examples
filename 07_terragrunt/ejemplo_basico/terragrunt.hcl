terraform {
  source = "./"
}

remote_state {
  backend = "s3"
  config = {
    bucket = "cloudcamp-terraform-state"
    key     = "terragrunt/ec2/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}