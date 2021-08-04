provider "aws" {
  region = "us-east-1"
}

#tfsec:ignore:AWS002
resource "aws_s3_bucket" "dph_uploads" {
  bucket = "demo-1-dph-uploads"
  acl    = "private"
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

#tfsec:ignore:AWS002
resource "aws_s3_bucket" "dp_uploads" {
  bucket = "demo-1-dp-uploads"
  acl    = "private"
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  
}

locals {
  buckets_to_block_public_access = toset([
     aws_s3_bucket.ph_uploads.id,
     aws_s3_bucket.dph_uploads.id
  ])
}


resource "aws_s3_bucket_public_access_block" "s3_bucket_block_public_access" {
  for_each                = local.buckets_to_block_public_access
  bucket                  = each.key
  block_public_acls       = true
  block_public_policy     = true
  restrict_public_buckets = true
  ignore_public_acls      = true
}
