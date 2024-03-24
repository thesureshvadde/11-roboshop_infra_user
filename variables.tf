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

variable "sg_name" {
  type = string
  default = "Allow-all"
}

variable "sg_description" {
  type = string
  default = "allowing all"
}

variable "ingress" {
  type = list
  default = [
    {
        description = "Allow https from internet"
        to_port = 443
        from_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        description = "Allow shh from my ip"
        to_port = 22
        from_port = 22
        protocol = "tcp"
        cidr_blocks = ["136.226.242.114/32"]
    }
  ]
}

variable "instances" {
  type = map
  default = {
    web = "t2.micro"
    mongodb = "t3.medium"
    mysql = "t3.medium"
    redis = "t2.micro"
    rabbitmq = "t2.micro"
    catalogue = "t2.micro"
    cart = "t2.micro"
    user = "t2.micro"
    payment = "t2.micro"
    shipping = "t2.micro"
  }
}

variable "zone_name" {
  type = string
  default = "sureshvadde.online"
}