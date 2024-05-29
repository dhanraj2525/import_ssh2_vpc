resource "aws_route_table_association" "TEST_SS2_PUB_SUB_ASSOOCIATION" {
  count          = length(var.TEST_SS2_SUBNETS.TEST_SS2_PUB_SUBNETS.subnet_name)
  subnet_id      = aws_subnet.TEST_SS2_PUB_SUBNETS[count.index].id
  route_table_id = aws_route_table.TEST_SS2_PUBLIC_ROUTE_TABLE.id
}

resource "aws_route_table_association" "TEST_SS2_DB_SUB_ASSOOCIATION" {
  count          = length(var.TEST_SS2_SUBNETS.TEST_SS2_DB_SUBNETS.subnet_name)
  subnet_id      = aws_subnet.TEST_SS2_DB_SUBNETS[count.index].id
  route_table_id = aws_route_table.TEST_SS2_DB_AND_APP_ROUTE_TABLES[0].id
}

resource "aws_route_table_association" "TEST_SS2_AZ_1A_APP_SUB_ASSOOCIATION" {
  count          = length(var.TEST_SS2_SUBNETS.TEST_SS2_AZ_1A_APP_SUBNETS.subnet_name)
  subnet_id      = aws_subnet.TEST_SS2_AZ_1A_APP_SUBNETS[count.index].id
  route_table_id = aws_route_table.TEST_SS2_DB_AND_APP_ROUTE_TABLES[1].id
}

resource "aws_route_table_association" "TEST_SS2_AZ_1B_APP_SUB_ASSOOCIATION" {
  count          = length(var.TEST_SS2_SUBNETS.TEST_SS2_AZ_1B_APP_SUBNETS.subnet_name)
  subnet_id      = aws_subnet.TEST_SS2_AZ_1B_APP_SUBNETS[count.index].id
  route_table_id = aws_route_table.TEST_SS2_DB_AND_APP_ROUTE_TABLES[2].id
}

