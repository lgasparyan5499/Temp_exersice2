data "aws_ami" "amazon" {
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  most_recent = true
}
data "aws_instance" "instance" {
  instance_id = "i-04c80c1c6ff41fbf1"
}

resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = aws_security_group.my_sg.id
  network_interface_id = data.aws_instance.instance.network_interface_id
}

resource "aws_instance" "EC2-1" {
  ami           = data.aws_ami.amazon.id
  instance_type = var.instance-type
  subnet_id = aws_subnet.public_subnet-1.id
    user_data_base64 = base64encode(file("init1.sh"))
  tags = {
    name = "${var.tag_name}1"
  }
}


