provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bwegfe" {
  bucket = "my-tf-test-bucketergerj"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}



resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
