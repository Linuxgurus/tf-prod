module  "network" {
  source = "git@github.com:gbpn/terraform-common.git//network?ref=HEAD"
  cloud = var.cloud
}
