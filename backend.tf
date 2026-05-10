terraform {
  backend "s3" {
    bucket = "tech-terraform-state323"
    key = "dev/terraform,tfstate"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
    
  }
}