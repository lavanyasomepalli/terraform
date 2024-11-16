resource "aws_subnet" "public_subnet_1" {
vpc_id = "${aws_vpc.demovpc.id}"
cidr_block = "10.0.1.0/24"
map_public_ip_on_launch = true
availability_zone = "us-east-1a"
tags = {
Name = "web subnet 1"
}
}
resource "aws_subnet" "public_subnet_2" {
vpc_id = "${aws_vpc.demovpc.id}"
cidr_block = "10.0.2.0/24"
map_public_ip_on_launch = true
availability_zone = "us-east-1b"
tags = {
Name = "web subnet 2"
}
}
resource "aws_subnet" "application-subnet_1" {
vpc_id = "${aws_vpc.demovpc.id}"
cidr_block = "10.0.3.0/24"
map_public_ip_on_launch = false
availability_zone = "us-east-1a"
tags = {
Name = "application subnet 1"
}
}
resource "aws_subnet" "application-subnet_2" {
vpc_id = "${aws_vpc.demovpc.id}"
cidr_block = "10.0.4.0/24"
map_public_ip_on_launch = false
availability_zone = "us-east-1b"
tags = {
Name = "application subnet 2"
}
}
resource "aws_subnet" "database-subnet_1" {
vpc_id = "${aws_vpc.demovpc.id}"
cidr_block = "10.0.5.0/24"
availability_zone = "us-east-1a"
tags = {
Name = "Database subnet 1"
}
}
resource "aws_subnet" "database-subnet_2" {
vpc_id = "${aws_vpc.demovpc.id}"
cidr_block = "10.0.6.0/24"
availability_zone = "us-east-1b"
tags = {
Name = "Database subnet 2"
}
}

