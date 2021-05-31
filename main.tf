 provider "aws" {
  # ... other configuration ...

  version = "~> 3.0"
}
 

provider "aws" {
  region = var.aws_region
}


terraform {
  backend "s3" {
    bucket = "amithcodebucket"
    key    = "terraform.tfstate"
    region = "ap-southeast-2"
  }
}