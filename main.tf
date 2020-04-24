
module "ssh" {
  source = "./module/ssh"
  ssh_label = "public ssh key - VM"
  ssh_notes = "SSH-Notes"
  ssh_key = "ssh_key_vm"
}


module "vm" {
  source = "./module/vm"
  hostname                 = "vm_lamp"
  os_reference_code        = "CENTOS_7"
  domain                   = "cts.com"
  datacenter               = "wdc01"
  network_speed            = "100"
  cores                    = "1"
  memory                   = "1024"
  disk_size                = "25"
  ssh_key_ids		       = module.ssh.ssh_key_id
  tags                     = "vm lamp"
}