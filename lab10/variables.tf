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
  default = "ami-0c55b159cbfafe1f0"
}

variable "instance_name" {
     type = string
     default = "karim-instance"
     validation {
       condition = length(var.instance_name) > 5
       error_message = "The instance name must more than 5 letters."
     }
}

variable "env" {
  type = string
}