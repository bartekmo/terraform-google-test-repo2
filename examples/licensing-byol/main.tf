module "fgt_ha" {
  #  source        = "bartekmo/terraform-google-test-repo2/google//modules/fortigate/ha-active-passive"
  source = "./../.."

  region  = "us-central1"
  subnets = ["external", "internal", "hasync", "mgmt"]

  license_files = ["dummy_lic1.lic", "dummy_lic2.lic"]
  image = {
    license = "byol"
  }
}
