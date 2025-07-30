module "fgt_ha" {
  source        = "bartekmo/terraform-google-test-repo2/google//modules/fortigate/ha-active-passive"

  region        = "us-central1"
  subnets       = [ "external", "internal", "hasync", "mgmt" ]

  image = {
    family = "fortigate-72-payg"
  }
}
