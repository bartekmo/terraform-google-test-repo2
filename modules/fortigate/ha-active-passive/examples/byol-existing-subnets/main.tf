module "fgt_ha" {
  source        = "bartekmo/terraform-google-test-repo2/google//modules/fortigate/ha-active-passive"

  prefix        = "fgt-example-byol"
  region        = "us-central1"
  license_files = ["dummy_lic1.lic", "dummy_lic2.lic"]
  image = {
    family  = "fortigate-72-byol"
  }
  labels        = {
    owner : "johndoe"
    env   : "test"
  }
  subnets       = [ var.subnet_external, var.subnet_internal, var.subnet_hasync, var.subnet_mgmt]
  frontends     = ["app1"]
}

output outputs {
  value = module.fgt_ha
}
