# variables.tf

# variables provider
variable "vsphere_user" {}
variable "vsphere_password" {}
variable "vsphere_server" {}

#variables infra
variable "vsphere_datacenter" {}
variable "vsphere_cluster_name" {}
variable "vsphere_host" { type=list}