terraform {
  backend "s3" {
    bucket = "persnal-backed-bucket-for-all-repo"
    key    = "terraform/demo"
    region = "us-east-1"
  }
}
