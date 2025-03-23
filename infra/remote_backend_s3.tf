terraform {
  backend "s3" {
    bucket = "iac-ecom-terraform-state-123456"
    key    = "devops-project-1/terraform.tfstate"
    region = "ap-south-1"
  }
}

