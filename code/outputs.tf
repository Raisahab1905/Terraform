output "bucket_name" {
  value = aws_s3_bucket.insecure_bucket.bucket
}

output "security_group_id" {
  value = aws_security_group.insecure_sg.id
}

