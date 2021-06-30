# Terraform Block
terraform {
  required_version = "~> 0.14" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  
  backend "s3" {
    bucket = "basamterraformstatefilebucket"
    key    = "dev/terraform.tfstate"
    region = "us-west-1" 

    # Enable during Step-09     
    # For State Lockingcls

    #dynamodb_table = "basamdev"    
  
  
  }
}


# Provider Block
provider "aws" {
  region  = var.aws_region
  #profile = "default"
  #profile ="dev"
 
}
