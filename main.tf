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

  private_subnets = ["10.1.2.0/16"]
}
