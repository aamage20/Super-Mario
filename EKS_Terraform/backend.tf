terraform {
  backend "s3" {
    bucket = "super-mario-project" # Replace with your actual S3 bucket name
    key    = "EKS/terraform.tfstate"
    region = "ap-south-1"  #replace with your actual region
  }
}
