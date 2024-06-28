variable "aws_region" {
  type = string
  description = "The AWS region of the bucket"
}

variable "sub_domain" {
  type = string
  description = "The subdomain to set for our CNAME record in Cloudflare"
  default = tf-test
}

variable "site_domain" {
  type = string
  description = "The Cloudflare domain name for setting CNAME record"
}

variable "cloudflare_api_token" {
  type = string
  description = "The Cloudflare api token to make DNS changes"
}
