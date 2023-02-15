resource "aws_internet_gateway" "test-int-internet-gateway" {

  depends_on = [
    aws_vpc.test-int-vpc
  ]

  vpc_id = aws_vpc.test-int-vpc.id
}
