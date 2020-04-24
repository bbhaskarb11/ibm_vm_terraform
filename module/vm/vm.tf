resource "ibm_compute_vm_instance" "vm" {
  hostname                 = "${var.hostname}"
  os_reference_code        = "${var.os_reference_code}"
  domain                   = "${var.domain}"
  datacenter               = "${var.datacenter}"
  network_speed            = "${var.network_speed}"
  hourly_billing           = true
  private_network_only     = "${var.private_network_only}"
  cores                    = "${var.cores}"
  memory                   = "${var.memory}"
  disks                    = ["${var.disk_size}"]
  dedicated_acct_host_only = true
  local_disk               = false
  ssh_key_ids              = ["${var.ssh_key_ids}"]
  tags                     = ["${var.tags}"]
  user_metadata            = "${file("${path.module}/install.yml")}"
}