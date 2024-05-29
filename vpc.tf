resource "aws_vpc" "TEST-SS2" {
  cidr_block           = var.TEST_SS2_CIDR
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name = var.TEST_SS2_VPC_NAME
  }
}
resource "aws_vpc_ipv4_cidr_block_association" "Secondry_cidr" {
  count      = length(var.TEST_SS2_SECONDRY_CIDR)
  vpc_id     = aws_vpc.TEST-SS2.id
  cidr_block = var.TEST_SS2_SECONDRY_CIDR[count.index]
}
output "print" {
  value = aws_vpc_ipv4_cidr_block_association.Secondry_cidr[*].id
}
