terraform {
  backend "s3" {
    bucket         = "794010617513-terraform-tfstate"
    key            = "dev/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "794010617513-terraform-tfstate-lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.79.0"
    }
  }
}

provider "aws" {
  region  = "eu-central-1"
}
