# terraforms.tfvars

# Providers
vsphere_user = "administrator@vsphere.local"
vsphere_password = "MY_PASSWORD!"
vsphere_server = "192.168.1.91"

# Infrastructure
vsphere_datacenter = "Alphorm"
vsphere_datastore = "Datastore"
vsphere_cluster_name = "Cluster" 
vsphere_network = "VM Network"

# VM
vm_count = "2"
vm_name = "vm-test"
vm_cpu = "1"
vm_memory = "256"
vm_guest_id = "otherGuest64"
vm_disk_label = "disk0"
vm_disk_size = "1"