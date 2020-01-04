resource "aws_iam_user" "tim" {
  name          = "tim"
  path          = "/"
}

resource "aws_iam_group" "developers" {
  name          = "developers"
  path          = "/"
}

resource "aws_iam_group_membership" "developers_team" {
  name          = "developers-group-membership"
  users = [
      aws_iam_user.tim.name
  ]
  group = aws_iam_group.developers.name
}

resource "aws_iam_policy" "admin_policy" {
  name = "admin_policy_talant" 
  path = "/" 
  description = "admin policy created by Talant" 
  policy = <<EOF 
{
"Version": "2012-10-17", 
"Statement": [ 
{ 
"Sid": "VisualEditor0",
"Effect": "Allow", 
"Action": "ec2:*", 
"Resource": "*" 
} 
] 
} 
EOF 
} 
