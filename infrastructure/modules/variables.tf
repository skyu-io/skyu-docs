variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "index_document" {
  description = "Index document for the website configuration"
  type        = string
  default     = "index.html"
}

variable "cloudfront_distribution_description" {
  description = "CloudFront Distribution Description"
  type        = string
}

variable "domain_names" {
  description = "Domain names of the static website"
  type        = list(string)
}

variable "acm_certificate_arn" {
  description = "ACM Certificate ARN"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}