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

resource "vsphere_folder" "folder" {
  path          = var.vsphere_folder_var.name
  type          = var.vsphere_folder_var.type
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
