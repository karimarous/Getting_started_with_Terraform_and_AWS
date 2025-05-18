# 1. Import resource created outside Terraform 
1.1 Create an ZC2 instance in the default VPC without a key pair in AWS console

1.2 Open main.tf in the root project and add the following code
'''
   resource "aws_instance" "instance_import" {
     ami           = data.aws_ami.ubuntu.id
     instance_type = var.instance_type
     tags = {
       Name = "instance-import"
     }
   }
'''
1.3 Import resource (method 1)
1.3.1 Run the following command
'''
   terraform import aws_instance.instance_import instance_id
'''

1.3.2 Run the following command
'''
   terraform state rm aws_instance.instance_import 
'''

1.4 Import resource (method 2)
1.4.1 Open main.tf and update it with the following code
'''
import {
  to = aws_instance.web
  id = "instance_id"
}
'''

1.4.2 Run the following command
'''
   terraform apply
'''
Type "yes"

1.5 Destroy all resources
 Run the following command
'''
   terraform destroy
'''
Type "yes"