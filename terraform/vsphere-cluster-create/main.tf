# Provider
provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server

  # If you have a self-signed cert
  allow_unverified_ssl = true
}

# Datasources 
data "vsphere_datacenter" "dc" {
  name = "${var.vsphere_datacenter}"
}

data "vsphere_host" "hosts" {
  count         = "${length(var.vsphere_host)}"
  name          = "${var.vsphere_host[count.index]}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

# resources 
resource "vsphere_compute_cluster" "compute_cluster" {
  name            = "terraform-compute-cluster-test"
  datacenter_id   = "${data.vsphere_datacenter.dc.id}"
  host_system_ids = "${data.vsphere_host.hosts.*.id}"

  drs_enabled          = true
  drs_automation_level = "fullyAutomated"

  ha_enabled = false
}