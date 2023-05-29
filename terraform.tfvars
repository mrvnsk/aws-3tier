region  = "ap-south-1"
profile = "tf-user"

#Inputs for vpc module
vpc-cidr = "172.17.0.0/16"
vpc-name = "test-env"

#inputs for webserver security group
sg-name-1        = "web-server-sg"
sg-1-description = "enable http in inbound rule"
sg-1-port        = 80
sg-1-protocol    = "tcp"
sg-1-cidr        = "0.0.0.0/0"
