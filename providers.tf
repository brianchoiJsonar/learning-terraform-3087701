terraform {
  required_providers {
    aws = {
      source  = "644748426467/brian.choi-clean-RHEL7"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}
