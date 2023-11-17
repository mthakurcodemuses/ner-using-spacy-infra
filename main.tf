terraform {

  required_version = "> 1.5.0"

  cloud {
    organization = "nlp-using-spacy-infra"
    workspaces {
      name = "nlp-spacy-infra-cli"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 5.3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      "Name" = "nlp_app_eks"
    }
  }
}