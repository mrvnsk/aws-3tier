resource "aws_subnet" "subnet" {

    vpc_id = var.vpc-id
    cidr_block = var.sub-cidr
    availability_zone = var.az-name

    tags = {
      Name = "${var.sub-type}-subnet-${var.sub-no}"
    }
  
}
