output "website_bucket_name" {
  description = "Name (ID) of bucket"
  value = aws_s3_bucket.site.id
}

output "bucket_endpoint" {
  description = "Bucket endpoint"
  value = aws_s3_bucket_website_configuration.site.website_endpoint
}
