module "fgt_ha" {
  source        = "bartekmo/terraform-google-test-repo2/google//modules/fortigate/ha-active-passive"

  region        = "us-central1"
  subnets       = [ "external", "internal", "hasync", "mgmt" ]

  flex_tokens   = ["B1C38EDAEA0D4E568D2F", "9E8FF67B64924C3B82E1"]
  image = {
    family  = "fortigate-70-byol"
  }
}
