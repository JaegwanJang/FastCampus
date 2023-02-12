resource "aws_eip" "wclub-int-elastic-ip" {
  network_border_group = "ap-northeast-2"
  public_ipv4_pool     = "amazon"

  tags = {
    Name        = "wclub-int-elastic-ip"
  }

  tags_all = {
    Name        = "wclub-int-elastic-ip"
  }

  vpc = true
}
