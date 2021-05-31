 provider "aws" {
  region = var.aws_region

  version = "~> 3.0"
}
 

 


terraform {
  backend "s3" {
    bucket = "amithcodebucket"
    key    = "terraform.tfstate"
    region = "ap-southeast-2"
  }
}