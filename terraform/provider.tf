terraform {
  required_version = "1.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.11.0"
    }
  }

  backend "s3" {
    bucket       = "aws-vm-tfstate-kledsonbasso"
    key          = "tfstate"
    region       = "us-east-1" # ou variável para dinamizar
    use_lockfile = true
  }
}

provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  description = "AWS region to use"
  default     = "us-east-1"
}
