module "sg" {
  source = "../13-terrafrom_aws_sg"
  sg_description = var.sg_description
  sg_name = var.sg_name
  vpc_id = local.vpc_id
  ingress = var.ingress
  common_tags = var.common_tags
  project_name = var.project_name
}