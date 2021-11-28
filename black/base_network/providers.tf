terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}



provider "aws" {
  region = module.cloud.info.region
  profile = module.cloud.info.aws_profile
}
