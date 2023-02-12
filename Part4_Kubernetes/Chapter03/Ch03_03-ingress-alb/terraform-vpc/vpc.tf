resource "aws_vpc" "wclub-int-vpc" {
  assign_generated_ipv6_cidr_block = "false"
  cidr_block                       = "10.1.0.0/16"
  enable_dns_hostnames             = "true"
  enable_dns_support               = "true"
  instance_tenancy                 = "default"

  tags = {
    Name = "wclub-int-vpc"
  }

  tags_all = {
    Name = "wclub-vpc"
    fullName = "wclub-internal-vpc"
    owner = "wclub"
  }
}
