resource "aws_iam_user" "user1" {
  name = "bob"
  tags = {
    Team = "DevOps"
  }
}
  
resource "aws_iam_group" "group1" {
  name = "sysusers"
}

resource "aws_iam_user_group_membership" "example1" {
  user = aws_iam_user.user1.name

  groups = [
    aws_iam_group.group1.name,
  ]
}
 
  



  output name_user {
    value       = aws_iam_user.user1.name
  }
  output name_group {
    value       = aws_iam_group.group1.name
  }

  
  