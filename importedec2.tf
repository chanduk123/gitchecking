resource "aws_instance" "web2" {
    ami = var.imagename
    availability_zone = "us-east-1a"
    instance_type = "t2.micro"
    key_name = "LEARNAWS"
    subnet_id = "${aws_subnet.subnet1-public.id}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true	
    }