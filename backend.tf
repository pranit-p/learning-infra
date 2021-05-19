terraform {
  backend "s3" {
    bucket         = "persnal-terraform-backend"
    region         = "us-east-1"
  }
}
