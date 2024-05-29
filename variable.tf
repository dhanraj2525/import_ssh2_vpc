variable "TEST_SS2_CIDR" {
  type    = string
  default = "172.18.1.0/24"
}
variable "TEST_SS2_VPC_NAME" {
  type = string
  default = "TEST-SS2"
}
variable "TEST_SS2_SECONDRY_CIDR" {
  type    = list(string)
  default = ["172.18.3.0/24", "172.18.4.0/24"]
}
variable "TEST_SS2_AZ" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "TEST_SS2_SUBNETS" {
  type = map(object({
    cidr_block  = list(string)
    subnet_name = list(string)
  }))
  default = {

    "TEST_SS2_PUB_SUBNETS" = {
      cidr_block  = ["172.18.1.0/27", "172.18.1.32/27"]
      subnet_name = ["TEST-SS2-PUBLIC1", "TEST-SS2-PUBLIC2"]
    }

    "TEST_SS2_DB_SUBNETS" = {
      cidr_block  = ["172.18.1.160/27", "172.18.1.192/27"]
      subnet_name = ["TEST-SS2-DB-PRIVATE1", "TEST-SS2-DB-PRIVATE2"]
    }

    "TEST_SS2_AZ_1A_APP_SUBNETS" = {
      cidr_block  = ["172.18.1.64/27", "172.18.3.0/24"]
      subnet_name = ["TEST-SS2-APP-PRIVATE1", "TEST-SS2-APP-PRIVATE3"]
    }

    "TEST_SS2_AZ_1B_APP_SUBNETS" = {
      cidr_block  = ["172.18.1.96/27", "172.18.4.0/24"]
      subnet_name = ["TEST-SS2-APP-PRIVATE2", "TEST-SS2-APP-PRIVATE4"]
    }
  }
}

variable "TEST_SS2_IGW" {
  type    = string
  default = "IGW-NV-TEST-SS2-NEW"
}
variable "TEST_SS2_GATEWAY_CIDR" {
  type    = string
  default = "0.0.0.0/0"
}

variable "TEST_SS2_DEFAULT_ROUTE_TABLE" {
  type = string
  default = "TEST-SS2-DEFAULT"
}
variable "TEST_SS2_PUBLIC_ROUTE_TABLE" {
  type    = string
  default = "TEST-SS2-PUBLIC"
}

variable "TEST_SS2_DB_AND_aPP_ROUTE_TABLES" {
  type    = list(string)
  default = ["TEST-SS2-DB", "TEST-SS2-PRIVATE1", "TEST-SS2-PRIVATE2"]
}
