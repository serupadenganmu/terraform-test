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
  version = "0.1.0"
}
