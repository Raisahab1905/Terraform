variable "aws_region" {
  default = "us-east-1"
}

variable "bucket_name" {
  description = "S3 bucket name"
  default     = "checkov-demo-insecure-bucket"
}

variable "vpc_id" {
  description = "VPC ID where security group will be created"
  default     = "vpc-12345678"
}
