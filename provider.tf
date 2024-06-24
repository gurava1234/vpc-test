terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0" #aws provider version not terraform
    }
  }

  backend "s3" {
    bucket = "guru-remote-state"
    key    = "vpc-test"
    region = "us-east-1"
    dynamodb_table = "guru-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}