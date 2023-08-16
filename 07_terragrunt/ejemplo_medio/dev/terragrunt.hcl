include {
  path = find_in_parent_folders()
}

terraform {
  source = "../s3_bucket"
}

inputs = {
  bucket_name = "dev-bucket-cloudcamp-001"
}
