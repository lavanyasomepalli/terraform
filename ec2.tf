resource "aws_instance" "demoinstance" {
ami = "ami_012967cc5a8c9f891"
instance_type = "t2.micro"
count = 1
key_name = "tests"
vpc_security_group_ids = ["$aws_security_group.demosg.id}"]
subnet_id = "${aws_subnet.demoinstance.id}"
associate_public_ip_address = true
user_data = "${file("data.sh")}"
tags = {
Name = "My public instance"
}
}
resource "aws_instance" "demoinstance" {
ami = "ami_012967cc5a8c9f891"
instance_type = "t2.micro"
count = 1
key_name = "tests"
vpc_security_group_ids = ["$aws_security_group.demosg.id}"]
subnet_id = "${aws_subnet.demoinstance.id}"
associate_public_ip_address = true
user_data = "${file("data.sh")}"
tags = {
Name = "My public instance 2"
}
}

