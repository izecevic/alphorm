# terraforms.tfvars
vsphere_user = "administrator@vsphere.local"
vsphere_password = "MY_PASSWORD!"
vsphere_server = "192.168.1.91"
vsphere_datacenter = "Alphorm"
vsphere_esxi_name = "192.168.1.93"
vswitch_name = "vSwitch0"
vsphere_portgroups = {
  "TEST" = "10"
  "DEV" = "20"
  "PROD" = "30"
}
