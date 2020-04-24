
variable "hostname" {
  description = "VDI Machine Name"
}

variable "domain" {
  description = "The domain for the instance."
}

variable "datacenter" {
  description = "The data center to create resources in."
}

variable "os_reference_code" {
  description = "The operating system reference code used to provision the computing instance."
}

variable "cores" {
  description = "The number of CPU cores to allocate."
}

variable "memory" {
  description = "The amount of memory (in Mb) to allocate."
}

variable "disk_size" {
  description = "The numeric disk sizes (in GB) for the instance’s block device and disk image settings."
}

variable "private_network_only" {
  default     = "false"
  description = "When set to true, a compute instance only has access to the private network."
}

variable "network_speed" {
  description = "The connection speed (in Mbps) for the instance’s network components."
}

variable "tags" {
  description = "Descriptive tags to label the VM."
}

variable "ssh_user" {
  default = "root" 
  description = "The default username for the VM."
}

variable "ssh_key_ids" {
  description = "The default username for the VM."
}