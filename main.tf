module "vpc" {

  source   = "./modules/vpc"
  vpc-cidr = var.vpc-cidr
  vpc-name = var.vpc-name

}

module "app-sg-1" {

  source         = "./modules/security-group"
  sg-name        = var.sg-name-1
  description    = var.sg-1-description
  vpc-id         = module.vpc.vpc-id
  port           = var.sg-1-port
  protocol       = var.sg-1-protocol
  sg-cidr-blocks = var.sg-1-cidr
}

data "aws_availability_zones" "azs" {}

module "pub-web-sub-1" {

  source   = "./modules/subnet"
  vpc-id   = module.vpc.vpc-id
  sub-cidr = "172.17.0.0/24"
  sub-type = "public"
  sub-no   = "1"
  az-name  = data.aws_availability_zones.azs.names[0]

}
