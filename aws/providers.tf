provider "aws" {
  region                  = var.aws_region
  access_key              = var.aws_access_key_id
  secret_key              = var.aws_secret_access_key
  shared_credentials_files = var.aws_shared_credentials_files
  profile                 = var.aws_profile
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 0.12"
}
