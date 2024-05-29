terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
  access_key = "AKIAZIS4J6DGEDA5LH5J"
  secret_key = "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"

}
