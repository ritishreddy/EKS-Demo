terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    region = "us-east-1"
    dynamodb_table = "terraform-state-table"
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = var.aws_region
}
