# 1. Use local variable

1. Delete the variable env

2. Create a file named locals.tf then copy the following code inside it
```
locals {
   env = "dev"
}
```

3. Go to variables.tf then remove the block variable env 

4. Go to dev.tfvars and remove the ligne that start with "env ="

5. Go to main.tf and replace any "var.env" with "local.env"
Run the following command

```
terraform apply -var-file="dev.tfvars"
```

