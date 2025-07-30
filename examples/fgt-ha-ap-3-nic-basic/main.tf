module "fgt_ha" {
  source = "bartekmo/test-repo2/google//modules/fgt-ha-active-passive"

  zones   = ["us-central1-b", "us-central1-c"]
  subnets = ["external", "internal", "mgmt"]
}
