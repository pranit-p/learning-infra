provider "aws" {
  region = "us-east-1"
}

//resource "aws_s3_bucket" "codebuild-bucket" {
//  bucket = "codebuild_bucket"
//  acl    = "private"
//  versioning {
//    enabled = true
//  }
//  tags = {
//    Name        = "My bucket"
//    Environment = "Dev"
//  }
//  server_side_encryption_configuration {
//    rule {
//      apply_server_side_encryption_by_default {
//        sse_algorithm     = "AES256"
//      }
//    }
//  }
//  logging {
//    target_bucket = "logging_bucket"
//  }
//}
//
