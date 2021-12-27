# Provider
provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server

  # If you have a self-signed cert
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "datacenter" {
  name = var.vsphere_datacenter
}

data "vsphere_host" "esxi_host" {
  name          = var.vsphere_esxi
  datacenter_id = "${data.vsphere_datacenter.datacenter.id}"
}

data "vsphere_vmfs_disks" "available" {
  host_system_id = "${data.vsphere_host.esxi_host.id}"
  rescan         = true
  filter         = "t10"
}

resource "vsphere_vmfs_datastore" "datastore" {
  name           = var.vsphere_datastore
  host_system_id = "${data.vsphere_host.esxi_host.id}"

  disks = "${data.vsphere_vmfs_disks.available.disks}"
}