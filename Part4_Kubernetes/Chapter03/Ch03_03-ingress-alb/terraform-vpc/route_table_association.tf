
########## Public Subnet Route Tables Association ########## 

resource "aws_route_table_association" "test-int-route-association-pub-sub1" {
  route_table_id = aws_route_table.test-int-route-table-pub-sub1.id
  subnet_id      = aws_subnet.test-int-public-subnet1.id
}

resource "aws_route_table_association" "test-int-route-association-pub-sub3" {
  route_table_id = aws_route_table.test-int-route-table-pub-sub3.id
  subnet_id      = aws_subnet.test-int-public-subnet3.id
}

########## Private Subnet Route Tables Association ########## 

resource "aws_route_table_association" "test-int-route-association-pri-sub1" {
  route_table_id = aws_route_table.test-int-route-table-pri-sub1.id
  subnet_id      = aws_subnet.test-int-private-subnet1.id
}

resource "aws_route_table_association" "test-int-route-association-pri-sub3" {
  route_table_id = aws_route_table.test-int-route-table-pri-sub3.id
  subnet_id      = aws_subnet.test-int-private-subnet3.id
}
