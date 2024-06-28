<h1 align="center">
  Hello! 👋
</h1>

This repository is the home for an AWS static website, managed by Terraform.

## Table of Contents

- [Table of Contents](#table-of-contents)
- [About the Project](#about-the-project)
- [Notes/To Do](#notesto-do)

## About the Project

This project is intended to help me learn Terraform by building infrastructure on AWS, specifically a static website hosted on an S3 bucket. Most of this was accomplished by following the official documentation/tutorials provided by HashiCorp, with some steps modified/omitted to suit my own infrastructure.

This Terraform workflow sets up an S3 bucket using the AWS CLI, sets its permissions to allow public access and static website hosting, and outputs the bucket's endpoint URL (which can be output with `terraform output` after the plan is applied). The domain name/DNS records are handled by Cloudflare with Caddy acting to reverse proxy traffic to the website endpoint (much like my other infrastructure). For now, this workflow only sets up the AWS infra, some work needs to be done still to make it more automated.

## Notes/To Do

Some work still needs to be done here to finish this workflow.

- Add Cloudflare module to add a CNAME record/subdomain for the website
- Add a script to pipe the output (website endpoint URL) into a new entry in the Caddyfile
- Add a CI/CD component (like in my [other static site project](https://github.com/chase-slept/study-log)) to upload the static files to the S3 bucket