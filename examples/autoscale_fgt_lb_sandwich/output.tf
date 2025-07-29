output "fgt_username" {
  value       = "admin"
  description = "Default username for all FGTs."
}

output "fgt_password" {
  value       = module.fortigate_asg.fgt_password
  sensitive   = true
  description = "Password for all FGTs."
}

output "autoscale_psksecret" {
  value       = module.fortigate_asg.autoscale_psksecret
  sensitive   = true
  description = "The secret key used to synchronize information between FortiGates."
}

output "bucket_name" {
  value       = module.fortigate_asg.bucket_name
  description = "GCP Bucket name."
}

output "elb_ip" {
  value       = google_compute_address.elb_ip.address
  description = "External Load Balancer IP."
}

output "ilb_ip" {
  value       = google_compute_address.ilb_ip.address
  description = "Internal Load Balancer IP."
}

output "vpc_external" {
  value       = module.vpc_external
  description = "External VPC."
}

output "vpc_internal" {
  value       = module.vpc_internal
  description = "Internal VPC."
}
