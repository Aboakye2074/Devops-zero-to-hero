terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.12"
    }
  }
}

provider "aws" {
  region     = "us-east-2"
}

# Using remote backend
terraform {
  backend "s3" {
    bucket = "366140438193-terraform-state"
    key    = "tfstate"
    region = "us-east-2"
  }
}

