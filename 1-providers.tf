# Configure Providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
  }
}

provider "aws" {
  region = var.region
}

# Create remote state
terraform {
  backend "s3" {
    bucket = "remote-state-app"
    region = "us-east-1"
    key    = "web-auto/terraform.tfstate"
  }
}
