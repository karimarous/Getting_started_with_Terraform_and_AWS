# 1. Create a Security Group using Dynamic block

1.1 Go to main.tf and add the following code
```
   resource "aws_security_group" "sg" {
     name        = "${var.sg_name}-${local.env}"
     description = var.sg_description
     vpc_id      = aws_vpc.vpc.id

     dynamic "ingress" {
       for_each = var.sg_ingress_rules
       content {
         from_port   = ingress.value.from_port
         to_port     = ingress.value.to_port
         protocol    = ingress.value.protocol
         cidr_blocks = ingress.value.cidr_blocks
       }
     }
     tags = {
       Name = "${var.sg_name}-${local.env}"
     }
   }
```

1.2 Go to variables.tf and add the following code
```
   variable "sg_name" {
   type    = string
   }

   variable "sg_description" {
   type    = string
   }

   variable "sg_ingress_rules" {
   type = list(object({
             from_port   = number
             to_port     = number
             protocol    = string
             cidr_blocks = list(string)
           }))
   }
```

1.3 Go to dev.tfvars and override all the code with the following code
```
   sg_name = "karim-sg"
   sg_description = "Security group with dynamic rules"
   sg_ingress_rules = [
       {
         from_port   = 22
         to_port     = 22
         protocol    = "tcp"
         cidr_blocks = ["0.0.0.0/0"]
       },
       {
         from_port   = 80
         to_port     = 80
         protocol    = "tcp"
         cidr_blocks = ["0.0.0.0/0"]
       },
       {
         from_port   = 443
         to_port     = 443
         protocol    = "tcp"
         cidr_blocks = ["0.0.0.0/0"]
       }
     ]
```
Replace "karim" with "your_name"

1.4 Run th following command
```
   terraform apply -var-file="dev.tfvars"
```
Type "yes"

1.5 Run the following command
```
   terraform destroy -var-file="dev.tfvars"
```