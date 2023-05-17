# Root terragrunt.hcl
remote_state {
  backend = "s3"
  config = {
    bucket         = "mi-estado-terraform"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
  }
}

# terragrunt.hcl
include {
  path = find_in_parent_folders()
}

# En la capa de aplicación
# terragrunt.hcl
include {
  path = find_in_parent_folders()
}
dependencies {
  paths = ["../networking"]
}
