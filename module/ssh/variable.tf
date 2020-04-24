variable "ssh_label" {
  default     = "public ssh key - VM"
  description = "An identifying label to assign to the SSH key."
}

variable "ssh_notes" {
  default     = "SSH_note"
  description = "A description to assign to the SSH key."
}

variable "ssh_key" {
  default     = "ssh_key"
  description = "Your public SSH key to access the VM."
}