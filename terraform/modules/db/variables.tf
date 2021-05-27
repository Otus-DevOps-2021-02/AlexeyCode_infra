variable subnet_id {
  description = "Subnet id"
}

variable public_key_path {
  description = "Path to the public key"
}

variable private_key_path {
  description = "Path to the private key"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default = "reddit-db-base"
}
