############ bastion ec2 instance iam role ############

resource "aws_iam_role" "test-int-iam-role-ec2-instance-bastion" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY
  name                 = "test-int-iam-role-ec2-instance-bastion"
  description          = "Iam role for bastion ec2 instance."
  max_session_duration = "3600"
  path                 = "/"

  tags = {
    Name        = "test-int-iam-role-ec2-instance-bastion"
  }

  tags_all = {
    Name        = "test-int-iam-role-ec2-instance-bastion"
  }
}
