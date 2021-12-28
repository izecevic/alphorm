# Provider
provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server

  # If you have a self-signed cert
  allow_unverified_ssl = true
}

resource "vsphere_folder" "folder" {
  path          = var.vsphere_folder_var.path
  type          = var.vsphere_folder_var.type
}
