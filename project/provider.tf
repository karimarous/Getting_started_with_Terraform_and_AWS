terraform {
  required_version = "~> 1.12.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.92.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}
