provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}
module "app" {
  source           = "../modules/app"
  public_key_path  = var.public_key_path
  app_disk_image   = var.app_disk_image
  subnet_id        = module.vpc.main_vpc_subnet
  private_key_path = var.private_key_path
  db_url           = module.db.external_ip_address_db
}

module "db" {
  source           = "../modules/db"
  public_key_path  = var.public_key_path
  db_disk_image    = var.db_disk_image
  subnet_id        = module.vpc.main_vpc_subnet
  private_key_path = var.private_key_path
}

module "vpc"{
  source           = "../modules/vpc"
}


resource "local_file" "generate_inventory" {
  content = templatefile("inventory.tmpl",{
    app_names = module.app.instance_name[0],
    app_ips = module.app.external_ip_address_app[0],
    db_names = module.db.instance_name,
    db_ips = module.db.external_ip_address_db

  } )
  filename = "./inventory.json"
}
