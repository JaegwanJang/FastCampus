resource "aws_nat_gateway" "wclub-int-nat-gateway" {

  depends_on = [
    aws_eip.wclub-int-elastic-ip
  ]

  allocation_id     = aws_eip.wclub-int-elastic-ip.id
  subnet_id         = aws_subnet.wclub-int-public-subnet3.id
  connectivity_type = "public"

  tags = {
    Name        = "wclub-int-nat-gateway"
  }

  tags_all = {
    Name        = "wclub-int-nat-gateway"
  }

}
