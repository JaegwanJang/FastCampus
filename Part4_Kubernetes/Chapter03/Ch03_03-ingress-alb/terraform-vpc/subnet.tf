############ Public Subnets ############

resource "aws_subnet" "wclub-int-public-subnet1" {

  depends_on = [
    aws_vpc.wclub-int-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.1.0.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "wclub-int-public-subnet1"
    "kubernetes.io/cluster/wclub-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  tags_all = {
    Name                                     = "wclub-int-public-subnet1"
    "kubernetes.io/cluster/wclub-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  vpc_id = aws_vpc.wclub-int-vpc.id
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "wclub-int-public-subnet3" {

  depends_on = [
    aws_vpc.wclub-int-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.1.16.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "wclub-int-public-subnet3"
    "kubernetes.io/cluster/wclub-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  tags_all = {
    Name                                     = "wclub-int-public-subnet3"
    "kubernetes.io/cluster/wclub-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  vpc_id = aws_vpc.wclub-int-vpc.id
  availability_zone = "ap-northeast-2c"
}

############ Private Subnets ############

resource "aws_subnet" "wclub-int-private-subnet1" {

  depends_on = [
    aws_vpc.wclub-int-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.1.32.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "wclub-int-private-subnet1"
    "kubernetes.io/cluster/wclub-eks-cluster" = "shared"
  }

  tags_all = {
    Name                                     = "wclub-int-private-subnet1"
    "kubernetes.io/cluster/wclub-eks-cluster" = "shared"
  }

  vpc_id = aws_vpc.wclub-int-vpc.id
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "wclub-int-private-subnet3" {

  depends_on = [
    aws_vpc.wclub-int-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.1.48.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "wclub-int-private-subnet3"
    "kubernetes.io/cluster/wclub-eks-cluster" = "shared"
  }

  tags_all = {
    Name                                     = "wclub-int-private-subnet3"
    "kubernetes.io/cluster/wclub-eks-cluster" = "shared"
  }

  vpc_id = aws_vpc.wclub-int-vpc.id
  availability_zone = "ap-northeast-2c"
}
