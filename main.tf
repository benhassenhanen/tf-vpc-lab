resource "aws_vpc" "main" {
  cidr_block = "192.168.0.0/16"
}
resource "aws_subnet" "Public-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.1.0/24"

  tags = {
    Name = "Main-1"
  }
  
}
resource "aws_subnet" "Public-2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.2.0/24"

  tags = {
    Name = "Main-2"
  }
  
}
resource "aws_subnet" "Public-3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.3.0/24"

  tags = {
    Name = "Main-3"
  }
  
}
resource "aws_subnet" "private-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.11.0/24"

  tags = {
    Name = "Main"
  }
  
}
resource "aws_subnet" "private-2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.12.0/24"

  tags = {
    Name = "private-2"
  }
  
}
resource "aws_subnet" "private-3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.13.0/24"

  tags = {
    Name = "private-3"
  }
  
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main"
  }
}
resource "aws_route_table" "Route" {
  vpc_id = aws_vpc.Route.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "Route"
  }
}