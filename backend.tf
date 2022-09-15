terraform {
  backend "s3" {
    bucket = "ta-terraform-tfstates-781892149061"
    key    = "TF-VPC-LAB/week1/training-terraform/terraform.tfstates"
    
  }
}