terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
  bucket = "state-lock-arushh"
  key    = "terraform.tfstate"
  region = "us-east-2"
  dynamodb_table = "state-lock-arushh-db"
}
}

