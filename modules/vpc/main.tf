resource "aws_vpc" "vpc" {

    cidr_block = var.vpc-cidr
    instance_tenancy = "default"
    enable_dns_hostnames = true

    tags = {
      Name = "${var.vpc-name}-vpc"
    }
}

resource "aws_internet_gateway" "igw" {

  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${var.vpc-name}-igw"
  }
  
}
