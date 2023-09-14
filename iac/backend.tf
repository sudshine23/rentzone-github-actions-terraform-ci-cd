# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "sudarshan-terraform-remote-state-ci-cd"
    key            = "rentzone-app/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-lock"
  }
}
