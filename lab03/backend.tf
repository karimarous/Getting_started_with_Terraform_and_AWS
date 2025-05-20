terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"
    key            = "karim/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = "true"
    encrypt        = true
  }
}