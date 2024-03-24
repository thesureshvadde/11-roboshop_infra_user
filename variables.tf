variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  type = bool
  default = true
}

variable "enable_dns_support" {
  type = bool
  default = true
}

variable "project_name" {
  type = string
  default = "roboshop"
}

variable "common_tags" {
  type = map
  default = {
    Project = "Roboshop"
    Environment = "DEV"
    Terraform = true
  }
}

variable "vpc_tags" {
  type = map
  default = {
    Name = "roboshop"
  }
}

variable "igw_tags" {
  type = map
  default = {
    Name = "roboshop-igw"
  }
}

variable "public_subnet_cidr" {
  type = list
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidr" {
  type = list
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "database_subnet_cidr" {
  type = list
  default = ["10.0.21.0/24", "10.0.22.0/24"]
}
