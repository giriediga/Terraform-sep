terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.67.0" # this is aws provider version, not terraform version
    }
  }
}

provider "aws" {
    region = "us-east-1"
  # Configuration options
}