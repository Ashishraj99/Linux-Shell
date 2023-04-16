terraform {
  backend "s3" {
    bucket         = "ashish-terraform-backend"
    encrypt        = true
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "ashish-terraform-backend"
  }
}