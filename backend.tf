terraform {
  backend "s3" {
    bucket         = "persnal-terraform-backend"
    key = "./terraform.tfstate"
    region = "us-east-1"
  }
}

