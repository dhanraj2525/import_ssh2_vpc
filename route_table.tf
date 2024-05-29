resource "aws_default_route_table" "TEST_SS2_DEFAULT_ROUTE_TABLE" {
  default_route_table_id = aws_vpc.TEST-SS2.default_route_table_id

  tags = {
    Name = var.TEST_SS2_DEFAULT_ROUTE_TABLE
  }
}

resource "aws_route_table" "TEST_SS2_PUBLIC_ROUTE_TABLE" {
  vpc_id = aws_vpc.TEST-SS2.id

  route {
    cidr_block = var.TEST_SS2_GATEWAY_CIDR
    gateway_id = aws_internet_gateway.IGW-NV-TEST-SS2-NEW.id
  }
  tags = {
    Name = var.TEST_SS2_PUBLIC_ROUTE_TABLE
  }
}

resource "aws_route_table" "TEST_SS2_DB_AND_APP_ROUTE_TABLES" {
  count  = length(var.TEST_SS2_DB_AND_aPP_ROUTE_TABLES)
  vpc_id = aws_vpc.TEST-SS2.id
  tags = {
    Name = var.TEST_SS2_DB_AND_aPP_ROUTE_TABLES[count.index]
  }
}
