variable "VM_COUNT" {
  default = 1
  type = number
}

variable "VM_USER" {
  default = "dzintars"
  type = string
}

variable "VM_HOSTNAME" {
  default = "bastion"
  type = string
}

variable "VM_IMG_URL" {
  default = "https://download.fedoraproject.org/pub/fedora/linux/releases/33/Cloud/x86_64/images/Fedora-Cloud-Base-33-1.2.x86_64.qcow2"
  type = string
}

variable "VM_IMG_FORMAT" {
  default = "qcow2"
  type= string
}

variable "VM_CIDR_RANGE" {
  default = "192.168.122.0/24"
  type = string
}

