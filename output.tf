output Vpc_id {

value    = "${aws_vpc.default.id}"

}

output Vpc_cidr {

value = " ${aws_vpc.default.cidr_block}"

}

output Vpc_arn {

value = "${aws_vpc.default.arn}"

}

output Owner_id {

value = "${aws_vpc.default.owner_id}"

}