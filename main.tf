provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "allow_tls" {
  name = "allow_tls"



  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}