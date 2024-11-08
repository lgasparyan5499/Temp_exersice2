resource "aws_security_group" "my_sg" {
  name        = "SG"
  description = "Security group"
  vpc_id      = aws_vpc.my_vpc.id
  tags = {
    Name = "My_SG"
  }
}

resource "aws_vpc_security_group_ingress_rule" "http_rule" {
  security_group_id = aws_security_group.my_sg.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}
resource "aws_vpc_security_group_ingress_rule" "ssh_rule" {
  security_group_id = aws_security_group.my_sg.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 22
  ip_protocol = "tcp"
  to_port     = 22
}
resource "aws_vpc_security_group_ingress_rule" "tls_rule" {
  security_group_id = aws_security_group.my_sg.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 443
  ip_protocol = "tcp"
  to_port     = 443
}
