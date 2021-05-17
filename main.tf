provider "aws" {
  region = "us-east-1"
  profile = "for-terraform-aws-access"
}

module "codebuild_module" {
  source = "./module/codedeploy"
}
