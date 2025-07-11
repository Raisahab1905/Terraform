provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "insecure_bucket" {
  bucket = var.bucket_name
  acl    = "public-read"  # ❌ Insecure ACL

  tags = {
    Name        = "InsecureBucket"
    Environment = "Dev"
  }
}

resource "aws_security_group" "insecure_sg" {
  name        = "insecure_sg"
  description = "Allow all inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # ❌ Wide-open access
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "InsecureSG"
  }
}
