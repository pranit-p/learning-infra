provider "aws" {
  region = "us-east-1"
}

module "vpc_cloud_module" {
  source = "./module/vpc"
}