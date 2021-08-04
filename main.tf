provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
	bucket = "example"
	acl = "private-read"
}
  
resource "aws_s3_bucket_public_access_block" "example" {
	bucket = aws_s3_bucket.example.id
	block_public_acls   = true
	block_public_policy = true
}










//resource "aws_secretsmanager_secret" "bad_example" {
//  name       = "lambda_password"
//}

//resource "aws_alb" "good_example" {  }
#tfsec:ignore:AWS008
//resource "aws_security_group" "allow_tls" {
//  name        = "allow_tls"
//  description = "Allow TLS inbound traffic"
//
//  ingress {
//    from_port        = 0
//    to_port          = 0
//    protocol         = "-1"
//    cidr_blocks      = ["0.0.0.0/0"]
//    ipv6_cidr_blocks = ["::/0"]
//
//  }
//
//  egress {
//    from_port        = 0
//    to_port          = 0
//    protocol         = "-1"
//    cidr_blocks      = ["0.0.0.0/0"]
//    ipv6_cidr_blocks = ["::/0"]
//  }
//
//  tags = {
//    Name = "allow_tls"
//  }
//}