remote_state {
  backend = "s3"
  config = {
    bucket = "cloudcamp-terraform-state"
    key     = "terragrunt/${path_relative_to_include()}/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}