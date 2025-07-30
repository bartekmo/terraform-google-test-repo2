module "fgt_ha" {
#  source        = "bartekmo/terraform-google-test-repo2/google//modules/fortigate/ha-active-passive"
  source        = "./../.."

  zones         = [ "us-central1-b", "us-central1-c" ]
  subnets       = [ "external", "internal", "mgmt" ]
}