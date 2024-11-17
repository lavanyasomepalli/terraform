resource "aws_subnet" "public_subnet_1" {
vpc_id = "${aws_vpc.demovpc.id}"
cidr_block = "${var.subnet1_cidr}"
map_public_ip_on_launch = true
availability_zone = "us-east-1a"
tags = {
Name = "web subnet 1"
}
}
resource "aws_subnet" "public_subnet_2" {
vpc_id = "${aws_vpc.demovpc.id}"
cidr_block = "${var.subnet2_cidr}"
map_public_ip_on_launch = true
availability_zone = "us-east-1b"
tags = {
Name = "web subnet 2"
}
}
resource "aws_subnet" "application-subnet_1" {
vpc_id = "${aws_vpc.demovpc.id}"
cidr_block = "${var.subnet3_cidr}"
map_public_ip_on_launch = false
availability_zone = "us-east-1a"
tags = {
Name = "application subnet 1"
}
}
resource "aws_subnet" "application-subnet_2" {
vpc_id = "${aws_vpc.demovpc.id}"
cidr_block = "${var.subnet4_cidr}"
map_public_ip_on_launch = false
availability_zone = "us-east-1b"
tags = {
Name = "application subnet 2"
}
}
resource "aws_subnet" "database-subnet_1" {
vpc_id = "${aws_vpc.demovpc.id}"
cidr_block = "${var.subnet5_cidr}"
availability_zone = "us-east-1a"
tags = {
Name = "Database subnet 1"
}
}
resource "aws_subnet" "database-subnet_2" {
vpc_id = "${aws_vpc.demovpc.id}"
cidr_block = "${var.subnet6_cidr}"
availability_zone = "us-east-1b"
tags = {
Name = "Database subnet 2"
}
}

