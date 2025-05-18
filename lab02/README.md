# 1. Provision an EC2 instance

1.1. Create a file named main.tf

1.2. Copy the following code into main.tf
```
   resource "aws_security_group" "security_group" {
     name        = "karim-security-group"
     description = "Karim security group"
     tags = {
       Name = "karim-security-group"
     }
   }
```
1.3 Replace "karim" with your name

1.4 Run the following commands

1.4.1 Run the following command to see the resources that will be created
```
   terraform plan
```

1.4.2 Run the following command to provision the resources

```
   terrform apply
```

Type "yes"

# 2. Provision a Security Group
2.1. Update main.tf with the following code

```
   resource "aws_instance" "instance" {
     ami           = "ami-0f9de6e2d2f067fca"
     instance_type = "t3.micro"
     tags = {
       Name = "karim-instance"
     }
   }
```

2.2 Replace "karim" with "your_name"

2.3 Run the following commands
```
   terrform apply
```

2.4 Type "yes"