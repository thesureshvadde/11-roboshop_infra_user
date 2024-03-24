module "vpc" {
  source = "../11-terraform_aws_vpc_advanced-module"
  vpc_cidr = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_hostnames
  project_name = var.project_name
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags

  igw_tags = var.igw_tags

  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  database_subnet_cidr = var.database_subnet_cidr




}