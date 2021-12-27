# variables.tf

# variables provider
variable "vsphere_user" {}
variable "vsphere_password" {}
variable "vsphere_server" {}

#variables infra
variable "vsphere_datacenter" {}
variable "esxi_user" {}
variable "esxi_password" {}
variable "esxi_address" {type=list}