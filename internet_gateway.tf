resource "aws_internet_gateway" "IGW-NV-TEST-SS2-NEW" {
  vpc_id = aws_vpc.TEST-SS2.id

  tags = {
    Name = var.TEST_SS2_IGW
  }
}
