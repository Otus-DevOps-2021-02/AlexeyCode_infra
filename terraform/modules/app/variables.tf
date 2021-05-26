variable subnet_id {
  description = "Subnet id"
}

variable public_key_path {
  description = "Path to the public key"
}

variable private_key_path {
  description = "Path to the private key"
}

variable instance_count {
  description = "Number of instances to deploy"
  default     = 1
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default = "reddit-app-base"
}

variable db_url {
  description = "DB url"
}
