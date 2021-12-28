# Provider
provider "vsphere" {
  user           = "administrator@vsphere.local"
  password       = "MY_PASSWORD"
  vsphere_server = "192.168.1.91"

  # If you have a self-signed cert
  allow_unverified_ssl = true
}

resource "vsphere_folder" "folder" {
  path          = "Alphorm"
  type          = "datacenter"
}
