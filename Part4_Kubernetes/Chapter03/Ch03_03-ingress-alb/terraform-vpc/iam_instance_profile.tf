resource "aws_iam_instance_profile" "test-int-ec2-instance-profile" {
  name = "test-int-ec2-instance-profile"
  path = "/"
  role = "test-int-iam-role-ec2-instance-bastion"
}
