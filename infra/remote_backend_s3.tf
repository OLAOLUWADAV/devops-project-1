terraform {
  backend "s3" {
    bucket = "dev-proj1jenkins-remote-state-bucket-123456"
    key    = "devops-project-1/terraform.tfstate"
    region = "ap-south-1"
  }
}

