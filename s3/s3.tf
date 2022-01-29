resource "aws_s3_bucket" "test" {
  bucket_prefix = "aws-s3-devops-task-jawad"
  acl           = "private"
  versioning {
    enabled = true
  }

  tags = {
    Team        = "DevOps"
    Environment = "Dev"
  }
}

