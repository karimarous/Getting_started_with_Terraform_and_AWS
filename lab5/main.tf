resource "aws_security_group" "security_group" {
  name        = "karim-security-group"
  description = "Karim security group"
  tags = {
    Name = "karim-security-group"
  }
}

resource "aws_instance" "instance" {
  ami           = "ami-0f9de6e2d2f067fca"
  instance_type = "t3.micro"
  tags = {
    Name = "karim-instance"
  }
}