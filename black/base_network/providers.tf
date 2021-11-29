terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}



provider "aws" {
  region = module.naming.env.region
  profile = module.naming.env.aws_profile
}
