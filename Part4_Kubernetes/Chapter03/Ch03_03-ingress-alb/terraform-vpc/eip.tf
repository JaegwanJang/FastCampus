resource "aws_eip" "test-int-elastic-ip" {
  network_border_group = "ap-northeast-2"
  public_ipv4_pool     = "amazon"

  tags = {
    Name        = "test-int-elastic-ip"
  }

  tags_all = {
    Name        = "test-int-elastic-ip"
  }

  vpc = true
}
