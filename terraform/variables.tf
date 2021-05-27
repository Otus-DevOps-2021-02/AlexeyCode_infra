variable cloud_id {
  description = "Cloud"
}

variable folder_id {
  description = "Folder id"
}

variable zone {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}

variable service_account_key_file {
  # Описание переменной
  description = "Path to the service account key file"
}

variable image_id {
  description = "image id"
}

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
  default     = "reddit-app-base"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
