provider "aws" {
  region = "us-east-1"
}


resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.log_bucket.id

  block_public_acls   = true
  block_public_policy = true
}


resource "aws_s3_bucket" "log_bucket" {
  bucket = "my-tf-log-bucket-demo1"
  acl    = "log-delivery-write"

}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket2123"
  acl    = "private"

  logging {
    target_bucket = aws_s3_bucket.log_bucket.id
    target_prefix = "log/"
  }
}

