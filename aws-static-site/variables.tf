variable "aws_region" {
  type = string
  description = "The AWS region of the bucket"
}

variable "site_domain" {
  type = string
  description = "The Cloudflare domain name for setting CNAME record"
}
