terraform {
  backend "s3" {
    bucket = "hcl-terraform-backend"
    key    = "state-file/"
    region = "ap-south-1"
    encrypt = true
  }
}
