module  "network" {
  source = "git@github.com:gbpn/terraform-common.git//vpc?ref=HEAD"
  cloud = var.cloud
  cluster = "core"
  app = ""
  name = var.cloud
}


module "subnet_ext1" {
  source = "git@github.com:gbpn/terraform-common.git//subnet?ref=HEAD"
  cloud = var.cloud
  vpc_id = module.network.vpc_id
}

