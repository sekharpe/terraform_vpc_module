variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16" # users can overrde

}

variable "enable_dns_hostnames" {
  type = bool
  default = true
  
}

variable "common_tags" {
  type = map
  default = {} # it is optional
}

variable "vpc_tags" {
  type = map
  default = {}
}

variable "project_name" {
  type = string
  
}

variable "Environment" {
  type = string

}

variable "igw_tags" {
  type = map
  default = {}
}

variable "public_subnets_cidr" {
    type = list
    validation {
      condition = length(var.public_subnets_cidr) == 2
      error_message = "please give 2 public valid subnets"
    }
}

variable "public_subnets_tags" {
    default = {}
  
}

variable "private_subnets_cidr" {
    type = list
    validation {
      condition = length(var.private_subnets_cidr) == 2
      error_message = "please give 2 public valid subnets"
    }
}

variable "private_subnets_tags" {
    default = {}
  
}

variable "database_subnets_cidr" {
    type = list
    validation {
      condition = length(var.database_subnets_cidr) == 2
      error_message = "please give 2 public valid subnets"
    }
}

variable "database_subnets_tags" {
    default = {}
  
}

variable "nat_gateway_tags" {
    default = {}
  
}

variable "public_route_table_tags" {
    default = {}
  
}

variable "private_route_table_tags" {
    default = {}
  
}

variable "database_route_table_tags" {
    default = {}
  
}

variable "is_peering_required" {
  type = bool
  default = false
}

variable "acceptor_vpc_id" {
  type = string
  default = ""
  
  
}
variable "vpc_peering_tags" {
  default = {}
}

variable "aws_vpc" {
  default = {}
}