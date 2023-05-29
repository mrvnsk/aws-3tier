resource "aws_security_group" "sg" {

    name = var.sg-name
    description = var.description
    vpc_id = var.vpc-id

    ingress {
        description = var.description
        from_port = var.port
        to_port = var.port
        protocol = var.protocol
        cidr_blocks = [var.sg-cidr-blocks]

    }

    tags = {
      Name = var.sg-name
    }
}
