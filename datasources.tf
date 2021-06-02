data "aws_vpc" "testvpc" {
  id = "vpc-0bccf759c4d8f4e0d"
}

resource "aws_subnet" "subnet3"{
    vpc_id    =  data.aws_vpc.testvpc.id
    availability_zone = "us-east-1c"
    cidr_block = "10.5.3.0/24"
tags = {
    Name = "subnet3"
}

}

resource "aws_subnet" "subnet4"{
    vpc_id    = data.aws_vpc.testvpc.id
    availability_zone = "us-east-1d"
    cidr_block = "10.5.4.0/24"
tags = {
    Name = "subnet4"
}

}