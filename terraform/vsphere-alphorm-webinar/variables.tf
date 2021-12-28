# variables.tf

# variables provider
variable "vsphere_user" { 
    default = "administrator@vsphere.local"
}

variable "vsphere_password" {}

variable "vsphere_server" {
    default = "192.168.1.91"
}

#variables infra
variable "vsphere_folder_var" {
  default = {
    path = "Alphorm"
    type = "datacenter"
  }
}