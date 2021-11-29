module  "network" {
  source = "git@github.com:gbpn/terraform-common.git//vpc?ref=HEAD"
  cloud = var.cloud
  cluster = "core"
  app = ""
  name = var.cloud
}

