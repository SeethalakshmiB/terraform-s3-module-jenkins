provider "aws" {
  region = "us-east-1"
}

module "demo_s3_module" {
  source = "./bucket"

  bucket_name = "test-bucket-abcd-xyzhfdhfas"
  environment = "prod"
}

module "demo_s3_module_1" {
  source = "./bucket"

  bucket_name = "test-bucket-abcd-xyzcdshcuidh-1"
  environment = "dev"
}