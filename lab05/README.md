# 1. Modify the resource out of terraform
1.1. Modify the EC2 instance name from "karim-instance" to "karim-instance1" in the console

1.2. Run the following command
```
   terrform apply
```

# 2. Modify the resource in the terraform configuration file
2.1. Replace the EC2 instance in main.tf with the following code
```
   resource "aws_instance" "instance" {
      ami           = "ami-0f9de6e2d2f067fca"
      instance_type = "t3.micro"
      tags = {
      Name = "karim-instance1"
      }
   }
```
2.2 Replace "karim" with your name

2.3. Run the following command
```
   terrform apply
```
2.4 Type "yes"

# 3. Fix the file main.tf
3.1 Replace the EC2 instance in main.tf with the following code
```
   resource "aws_instance" "instance" {
      ami           = "ami-0f9de6e2d2f067fca"
      instance_type = "t3.micro"
      tags = {
      Name = "karim-instance"
      }
   }
```
2.2 Replace "karim" with your name

2.3. Run the following command
```
   terrform apply
```
2.4 Type "yes"