###########################################
############## SkyU Console Prod ##########
###########################################

terraform {
  source = "${get_terragrunt_dir()}/../../../modules//s3_cloudfront"
}

include {
  path = find_in_parent_folders()
}

inputs = {

  bucket_name                         = "skyu-documentation"
  index_document                      = "index.html"
  cloudfront_distribution_description = "SkyU Documentation"
  domain_names                        = ["docs.skyu.io"]
  acm_certificate_arn                 = "arn:aws:acm:us-east-1:928410564736:certificate/fc41233b-8677-4af8-8740-152ad7087d16"

  tags = {
    "Name"         = "skyu-documentation-prod"
    "owner"        = "nilesh.jeyanandana@insighture.com"
    "scope"        = "core"
    "organization" = "insighture"
    "env"          = "prod"
    "project"      = "skyu"
    "app"          = "skyu"
  }
}


