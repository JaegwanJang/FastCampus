resource "aws_vpc" "test-int-vpc" {
  assign_generated_ipv6_cidr_block = "false"
  cidr_block                       = "10.1.0.0/16"
  enable_dns_hostnames             = "true"
  enable_dns_support               = "true"
  instance_tenancy                 = "default"

  tags = {
    Name = "test-int-vpc"
  }

  tags_all = {
    Name = "test-vpc"
    fullName = "test-internal-vpc"
    owner = "test"
  }
}
