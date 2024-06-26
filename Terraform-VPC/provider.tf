

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.42.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "my-vpc-terraform-bucket-001"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}

