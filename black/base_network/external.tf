module  "cloud" {
  source  = "git@github.com:gbpn/terraform-common.git//common?ref=HEAD"
  cloud   = var.cloud
  name    = var.cloud
}

