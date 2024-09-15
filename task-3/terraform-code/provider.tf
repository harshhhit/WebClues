terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket         = "XXXXXXXXXXX"  
    key            = "master.tfstate"  
    region         = var.region
    encrypt        = true                   
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}