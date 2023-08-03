provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = format("bucket-%s", var.bucket_suffix)
  acl    = "private" # Warning

  tags = {
    Name        = "S3 bucket"
    Environment = "Dev"
  }
}

variable "bucket_suffix" {
  description = "Sufijo a agregar al nombre del bucket"
  type        = string
  default     = "cloud-camp-2023-001"
}
