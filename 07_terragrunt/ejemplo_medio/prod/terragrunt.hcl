include {
  path = find_in_parent_folders()
}

terraform {
  source = "../s3_bucket"
}

inputs = {
  bucket_name = "prod-bucket-cloudcamp-001"
}
