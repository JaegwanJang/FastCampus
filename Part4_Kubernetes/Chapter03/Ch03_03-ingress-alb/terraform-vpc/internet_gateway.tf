resource "aws_internet_gateway" "wclub-int-internet-gateway" {

  depends_on = [
    aws_vpc.wclub-int-vpc
  ]

  vpc_id = aws_vpc.wclub-int-vpc.id
}
