################################################################################
# S3 Bucket
################################################################################

module "s3_bucket" {
  source = "github.com/skyu-io/skyu-terraform-modules.git//aws_modules/s3?ref=v3.27.0"

  bucket_name       = var.bucket_name
  enable_versioning = true
  enable_sse        = true

  enable_website = true
  index_document = var.index_document

  enable_object_ownership_controls = true
  object_owner                     = "ObjectWriter"
  enable_acl                       = true
  canned_acl                       = "private"

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true

  tags = var.tags
}

################################################################################
# Cloudfront
################################################################################

module "cloudfront" {
  source = "github.com/skyu-io/skyu-terraform-modules.git//aws_modules/cloudfront?ref=v3.27.0"

  cloudfront_distribution_description = var.cloudfront_distribution_description

  s3_bucket_name                 = var.bucket_name
  s3_bucket_regional_domain_name = module.s3_bucket.bucket_regional_domain_name

  domain_names        = var.domain_names
  acm_certificate_arn = var.acm_certificate_arn

  index_document = var.index_document

  depends_on = [module.s3_bucket]

  tags = var.tags
}

################################################################################
# S3 Bucket Policy Document
################################################################################

data "aws_iam_policy_document" "s3_bucket_policy" {
  statement {
    actions   = ["s3:GetObject"]
    resources = ["${module.s3_bucket.bucket_arn}", "${module.s3_bucket.bucket_arn}/*"]

    principals {
      type        = "AWS"
      identifiers = [module.cloudfront.origin_access_identity_iam_arn]
    }
  }
}

################################################################################
# S3 Bucket Policy
################################################################################

resource "aws_s3_bucket_policy" "bucket" {
  bucket = module.s3_bucket.bucket_id
  policy = data.aws_iam_policy_document.s3_bucket_policy.json
}