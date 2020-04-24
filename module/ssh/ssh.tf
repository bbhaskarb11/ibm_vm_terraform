resource "ibm_compute_ssh_key" "ssh_key" {
  label      = "${var.ssh_label}"
  notes      = "${var.ssh_notes}"
  public_key = "${var.ssh_key}"
}

output "ssh_key_id" {
  value = "${ibm_compute_ssh_key.ssh_key.id}"
}
