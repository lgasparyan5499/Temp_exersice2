resource "aws_vpc" "my_vpc" {
  cidr_block = "10.10.0.0/16"
  tags = {
    name = "Privet_subnet"
  }
}