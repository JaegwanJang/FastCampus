resource "aws_nat_gateway" "test-int-nat-gateway" {

  depends_on = [
    aws_eip.test-int-elastic-ip
  ]

  allocation_id     = aws_eip.test-int-elastic-ip.id
  subnet_id         = aws_subnet.test-int-public-subnet3.id
  connectivity_type = "public"

  tags = {
    Name        = "test-int-nat-gateway"
  }

  tags_all = {
    Name        = "test-int-nat-gateway"
  }

}
