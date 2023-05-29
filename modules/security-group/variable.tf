variable "sg-name" {}
variable "description" {}
variable "vpc-id" {}
variable "port" {
    type = number
}
variable "protocol" {
    default = "tcp"
}

variable "sg-cidr-blocks" {
    default = "0.0.0.0/0"
}