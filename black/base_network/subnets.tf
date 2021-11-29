module "public_subnets" {
  source = "git@github.com:gbpn/terraform-common.git//subnet?ref=HEAD"
  for_each = module.naming.info.public_subnets
  map_public_ip_on_launch = true
  cloud = var.cloud
  vpc_id = module.network.vpc_id
  cidr_block = each.key
  availability_zone = each.value
  public = true
}

module "private_subnets" {
  source = "git@github.com:gbpn/terraform-common.git//subnet?ref=HEAD"
  for_each = module.naming.info.private_subnets
  cloud = var.cloud
  vpc_id = module.network.vpc_id
  cidr_block = each.key
  availability_zone = each.value
}


