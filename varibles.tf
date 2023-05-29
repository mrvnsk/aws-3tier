#varibles for providers.tf
variable "region" {}
variable "profile" {}

#Varibles for VPC module
variable "vpc-cidr" {}
variable "vpc-name" {}


#varibles for app-sg-1 module
variable "sg-name-1" {}
variable "sg-1-description" {}
variable "sg-1-port" {}
variable "sg-1-protocol" {}
variable "sg-1-cidr" {}