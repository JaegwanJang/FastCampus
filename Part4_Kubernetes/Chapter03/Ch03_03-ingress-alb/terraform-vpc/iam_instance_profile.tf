resource "aws_iam_instance_profile" "wclub-int-ec2-instance-profile" {
  name = "wclub-int-ec2-instance-profile"
  path = "/"
  role = "wclub-int-iam-role-ec2-instance-bastion"
}
