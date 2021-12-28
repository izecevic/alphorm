# terraforms.tfvars

# Providers
vsphere_user = "administrator@vsphere.local"
vsphere_password = "MY_PASSWORD"
vsphere_server = "192.168.1.91"

# Infrastructure
vsphere_datacenter = "Alphorm"
vsphere_folder_var = {
    path = "Alphorm-vms"
    type = "vm"
}
