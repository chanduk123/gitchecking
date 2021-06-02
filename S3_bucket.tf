resource "aws_s3_bucket" "mybuck3" {
  bucket = "chandutestbuck"
  acl    = "private"    
# ^^^ these are argument refrences
  tags = {
    Name        = "My bucket3"
    Environment = "${var.environment}"
  }

  depends_on = [
    aws_route_table.terraform-public,
  ]
}


resource "aws_s3_bucket" "mybuck2" {
  bucket = "chandutestbuck2"
  acl    = "private"    
# ^^^ these are argument refrences
  tags = {
    Name        = "My bucket2"
    Environment = "${var.environment}"
  }
depends_on = [
    aws_route_table.terraform-public,
  ]
}

# resource "aws_s3_bucket" "mybuck4" {
#   bucket = "chandutestbuck4"
#   acl    = "private"    
# # ^^^ these are argument refrences
#   tags = {
#     Name        = "My bucket4"
#     Environment = "${var.environment}"
#   }
# depends_on = [
#     aws_route_table.terraform-public,
#   ]
# }