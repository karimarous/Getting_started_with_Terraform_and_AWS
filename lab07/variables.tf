variable "security_group_name" {
  type = string
  default = "karim-security-group"
}

variable "security_group_description" {
  type = string
  default = "karim security group"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "ami" {
  type = string
  default = "ami-0f9de6e2d2f067fca"
}

variable "instance_name" {
  type = string
  default = "karim-instance"
}