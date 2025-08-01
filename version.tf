terraform {
  required_version = ">=1.10"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
  backend "s3" {
    bucket = "remote-state-terra"
    key = "remote-state-terra/dev/terraform.tfstate"
    region = "ap-south-1"
  }
  
}
