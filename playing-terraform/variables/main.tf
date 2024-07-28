
provider "aws" {
  region = var.s3_region
}

resource "aws_s3_bucket" "bucket_terraform_test" {
  bucket = var.s3_bucket_name  # Ensure this bucket name is unique globally
#   acl    = "private"  # Access Control List. It is used to specify the permissions of the S3 bucket and its objects​⬤

  tags = {
    Name        = "s3_bucket_tag"
    Environment = var.s3_environment
  }
}
