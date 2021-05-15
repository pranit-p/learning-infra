resource "aws_vpc" "demo_vpc" {
  cidr_block = "192.0.0.0/16"
}

resource "aws_subnet" "subnet-no-1" {
  cidr_block              = "192.0.1.0/24"
  vpc_id                  = aws_vpc.demo_vpc.id
  map_public_ip_on_launch = true
  availability_zone       = "ap-east-1"
}
resource "aws_subnet" "subnet-no-2" {
  cidr_block              = "192.0.2.0/24"
  vpc_id                  = aws_vpc.demo_vpc.id
  map_public_ip_on_launch = false
  availability_zone       = "ap-south-1"
}


resource "aws_internet_gateway" "first-internet-gateway" {
  vpc_id = aws_vpc.demo_vpc.id
  tags = {
    name = "demo-internet-gateway"
  }
}

resource "aws_route_table" "demo-route-table" {
  vpc_id = aws_vpc.demo_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.first-internet-gateway
  }
}

resource "aws_api_gateway_domain_name" "bad_example" {
  security_policy = "TLS_1_0"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
resource "aws_route_table_association" "demo-association-1" {
  route_table_id = aws_route_table.demo-route-table.id
  subnet_id      = aws_subnet.subnet-no-1.id
}

resource "aws_route_table_association" "demo-association-2" {
  route_table_id = aws_route_table.demo-route-table.id
  subnet_id      = aws_subnet.subnet-no-2.id
}