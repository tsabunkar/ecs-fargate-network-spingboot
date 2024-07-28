# Defining the Terraform Variables

variable "s3_bucket_name" {
  type        = string                              #optional field
  description = "S3 Bucket Name Should be Unique"   #optional field
}

variable "s3_region" {
  description = "The AWS region where the S3 s3_bucket_namebucket will be created"
  type        = string
  default     = "us-east-1"
}

variable "s3_environment" {
  description = "The environment for the bucket"
  type        = string
  default     = "dev"
}