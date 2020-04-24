output "public_ip" {
  value = "http://${ibm_compute_vm_instance.vm.ipv4_address}"
}