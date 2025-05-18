# 1. Use local variable

1.1 Go to main.tf and replace to block resource aws_instance with the following code
'''
   resource "aws_instance" "web" {
     count = 2
     ami           = var.ami
     instance_type = var.instance_type
     tags = {
       Name = "${var.instance_name}-${local.env}-${count.index + 1}"
     }
   }
'''

1.2 Run th following command
'''
   terraform apply
'''
