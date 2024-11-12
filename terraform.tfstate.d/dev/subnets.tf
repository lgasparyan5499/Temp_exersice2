resource "aws_subnet" "public_subnet-2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.10.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    name =  "${var.tag_name_subnets}2"
  }
}


