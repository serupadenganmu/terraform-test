terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "serupadenganmu"
    workspaces {
      name = "aws"
    }
  }
}


//--------------------------------------------------------------------
// Modules
module "vpc_test" {
  source  = "app.terraform.io/serupadenganmu/vpc-test/aws"
  version = "0.3.0"
}

resource "aws_s3_bucket" "temp_bucket" {}
