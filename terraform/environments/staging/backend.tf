terraform {
  backend "s3" {
    bucket         = "mayank-saharan-terraform-state-bucket"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    # assume_role = {
    #   role_arn = "arn:aws:iam::PRODUCTION-ACCOUNT-ID:role/Terraform"
    # }
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

  required_version = ">= 1.2"
  }
}