terraform {
  required_version = ">= 1.14.0"

  cloud {
    organization = "34978-tomstestlab"

    workspaces {
      name = "ec2_deployment"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
