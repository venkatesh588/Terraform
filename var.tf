variable "rds_vpc_id" {
  default = "vpc-XXXXXXXX"
  description = "Our default RDS virtual private cloud (rds_vpc)."
}

variable "rds_public_subnets" {
  default = "subnet-YYYYYYYY,subnet-YYYYYYYY,subnet-YYYYYYYY,subnet-YYYYYYYY"
  description = "The public subnets of our RDS VPC rds-vpc."
}

variable "rds_public_subnet_group" {
  default = "default-vpc-XXXXXXXX"
  description = "Apparently the group name, according to the RDS launch wizard."
}
