# Provider
provider "vsphere" {
  user           = "administrator@vsphere.local"
  password       = "MY_PASSWORD"
  vsphere_server = "192.168.1.91"

  # If you have a self-signed cert
  allow_unverified_ssl = true
}

variable "vsphere_folder_path" {
  type = string
  default = "Alphorm"
}

variable "vsphere_folder_type" {
  type = string
  default = "datacenter"
}

resource "vsphere_folder" "folder" {
  path          = var.vsphere_folder_path
  type          = var.vsphere_folder_type
}
