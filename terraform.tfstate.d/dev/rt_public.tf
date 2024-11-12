resource "aws_route_table" "ig_rt" {
  vpc_id = aws_vpc.my_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_ig.id
  }
  tags = {
    Name = "${var.tag_name_rt_public}1"
  }
}
resource "aws_route_table_association" "pub_subnet_association-2" {

  subnet_id      = aws_subnet.public_subnet-2.id
  route_table_id = aws_route_table.ig_rt.id
}
