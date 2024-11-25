# terraform {
#   backend "s3" {
#     bucket = "cloudcamp-terraform-state"
#     key    = "modulo_2048/terraform.tfstate"
#     region = "us-east-1"
#     dynamodb_table = "cloudcamp-ddb-lock"
#     encrypt = true
#   }
# }
