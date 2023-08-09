provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "mi-bucket-cloudcamp-1111"
}

resource "aws_s3_object" "object" {
  # bucket = aws_s3_bucket.bucket.bucket
  bucket = "mi-bucket-cloudcamp-1111"
  key    = "memes/terraform_apply.jpeg"
  source = "terraform_apply.jpeg"
  # depends_on = [aws_s3_bucket.bucket]
}
