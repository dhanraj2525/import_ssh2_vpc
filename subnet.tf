resource "aws_subnet" "TEST_SS2_PUB_SUBNETS" {
  count             = length(var.TEST_SS2_SUBNETS.TEST_SS2_PUB_SUBNETS.subnet_name)
  vpc_id            = aws_vpc.TEST-SS2.id
  cidr_block        = var.TEST_SS2_SUBNETS.TEST_SS2_PUB_SUBNETS.cidr_block[count.index]
  availability_zone = var.TEST_SS2_AZ[count.index]
  tags = {
    Name = var.TEST_SS2_SUBNETS.TEST_SS2_PUB_SUBNETS.subnet_name[count.index]
  }
}

resource "aws_subnet" "TEST_SS2_DB_SUBNETS" {
  count             = length(var.TEST_SS2_SUBNETS.TEST_SS2_DB_SUBNETS.subnet_name)
  vpc_id            = aws_vpc.TEST-SS2.id
  cidr_block        = var.TEST_SS2_SUBNETS.TEST_SS2_DB_SUBNETS.cidr_block[count.index]
  availability_zone = var.TEST_SS2_AZ[count.index]
  tags = {
    Name = var.TEST_SS2_SUBNETS.TEST_SS2_DB_SUBNETS.subnet_name[count.index]
  }
}

resource "aws_subnet" "TEST_SS2_AZ_1A_APP_SUBNETS" {
  count             = length(var.TEST_SS2_SUBNETS.TEST_SS2_AZ_1A_APP_SUBNETS.subnet_name)
  vpc_id            = aws_vpc.TEST-SS2.id
  cidr_block        = var.TEST_SS2_SUBNETS.TEST_SS2_AZ_1A_APP_SUBNETS.cidr_block[count.index]
  availability_zone = var.TEST_SS2_AZ[0]
  tags = {
    Name = var.TEST_SS2_SUBNETS.TEST_SS2_AZ_1A_APP_SUBNETS.subnet_name[count.index]
  }
}

resource "aws_subnet" "TEST_SS2_AZ_1B_APP_SUBNETS" {
  count             = length(var.TEST_SS2_SUBNETS.TEST_SS2_AZ_1B_APP_SUBNETS.subnet_name)
  vpc_id            = aws_vpc.TEST-SS2.id
  cidr_block        = var.TEST_SS2_SUBNETS.TEST_SS2_AZ_1B_APP_SUBNETS.cidr_block[count.index]
  availability_zone = var.TEST_SS2_AZ[1]
  tags = {
    Name = var.TEST_SS2_SUBNETS.TEST_SS2_AZ_1B_APP_SUBNETS.subnet_name[count.index]
  }
}



