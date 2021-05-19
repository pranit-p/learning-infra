terraform {
  backend "s3" {
    bucket         = "persnal-terraform-backend"
    path = "/"
  }
}
