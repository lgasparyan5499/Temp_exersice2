

resource "aws_subnet" "public_subnet-1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.10.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    name = "My Public Subnet-1"
  }
}
resource "aws_subnet" "public_subnet-2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.10.3.0/24"
  availability_zone = "us-east-1b"
  tags = {
    name = "My Public Subnet-2"
  }
}

