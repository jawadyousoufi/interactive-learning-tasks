provider "aws" {
  region = "us-west-2"
}

# resource "aws_s3_bucket" "b" {
#   bucket_prefix = "aws-s3-devops-task-"
#   acl    = "private"
#   versioning {
#     enabled = true
#   }

#   tags = {
#     Team       = "DevOps"
#     Environment = "Dev"
#   }
# }