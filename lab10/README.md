# 1. Test variable condition

1.1 Replace the variable instance_name bloc with the following code
```
   variable "instance_name" {
     type = string
     default = "karim-instance"
     validation {
       condition = length(var.instance_name) > 5
       error_message = "The instance name must more than 5 letters."
     }
   }
```

1.2 Run the following command
```
    terraform apply
```
Type "yes"

# 2. Migrate all variables default values to dev.tfvars

2.1 Update dev.tfvars with the following code
```
   security_group_name = "karim-security-group"
   security_group_description = "karim security group"
   instance_type = "t2.micro"
   ami = "ami-0c55b159cbfafe1f0"
   instance_name = "karim-instance"
```

2.2 Run the following command

```
   terraform apply -var-file=dev.tfvars
```