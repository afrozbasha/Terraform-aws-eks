terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.aws_region
  access_key = "AKIA3QD7QS3TPUMNJR5F"
  secret_key = "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"
}

data "aws_availability_zones" "available" {}

provider "http" {}