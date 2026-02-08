provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "site" {
  bucket = "verdun90-secure-static-site"
}

resource "aws_s3_bucket_public_access_block" "block" {
  bucket = aws_s3_bucket.site.id

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  restrict_public_buckets = true
}
