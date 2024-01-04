output "s3_bucket_arn" {
  value       = module.s3_bucket.bucket_arn
  description = "S3 bucket ARN"
}

output "cloudfront_distribution_id" {
  value       = module.cloudfront.distribution_id
  description = "CloudFront Distribution ID"
}

