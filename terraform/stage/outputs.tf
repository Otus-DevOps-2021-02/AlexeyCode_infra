output "external_ip_address_app" {
  value = module.app.external_ip_address_app[0]
}
output "external_ip_address_db" {
  value = module.db.external_ip_address_db
}
