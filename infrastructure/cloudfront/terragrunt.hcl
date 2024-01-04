locals {
  # Automatically load account-level variables
  # account_vars = read_terragrunt_config(find_in_parent_folders("account.hcl"))

  aws_profile = "default"
  parsed      = regex(".*/(?P<env>.*?)/.*", get_terragrunt_dir())
  env         = local.parsed.env
}

terraform {
  extra_arguments "aws_profile" {
    commands = [
      "init",
      "apply",
      "refresh",
      "import",
      "plan",
      "taint",
      "untaint"
    ]

    env_vars = {
      AWS_PROFILE = "${local.aws_profile}"
    }
  }
}


remote_state {
  backend = "s3"
  config = {
    bucket  = "skyu-documentaion-tf-backend-${local.env}"
    key     = "${path_relative_to_include()}/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
    dynamodb_table = "skyu-documentaion-tf-backend-lock-table-${local.env}"
    profile = "${local.aws_profile}"
  }
}


# Indicate what region to deploy the resources into
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  region = "us-east-1"    
}

terraform {
  backend "s3" {
    bucket         = "skyu-documentaion-tf-backend-${local.env}"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "skyu-documentaion-tf-backend-lock-table-${local.env}"       
    profile        = "${local.aws_profile}"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.4.0"
    }
  }
}
EOF
}
