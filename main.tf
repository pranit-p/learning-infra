provider "aws" {
  region = "us-east-1"
}

<<<<<<< HEAD
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
=======
resource "aws_iam_role" "test1_role" {
  name = "test_role"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    tag-key = "tag-value"
  }
}
>>>>>>> 645ba3f44e04814f885304142d58220f3de1fb22
