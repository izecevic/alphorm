# Provider
provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server

  # If you have a self-signed cert
  allow_unverified_ssl = true
}
data "vsphere_datacenter" "dc" {
  name = var.vsphere_datacenter
}

resource "vsphere_host" "host" {
  count      = "${length(var.esxi_address)}"
  hostname   = "${var.esxi_address[count.index]}"
  username   = var.esxi_user
  password   = var.esxi_password
  datacenter = data.vsphere_datacenter.dc.id
}