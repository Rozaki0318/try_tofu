terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-northeast-1"
}

# Create a VPC
module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = "192.168.1.0/24"
}

