terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "terraform-object-storage-stage"
    region     = "us-east-1"
    key        = "terraform-stage.tfstate"
    access_key = "X0NR6dDMtnXUBF_oRc4E"
    secret_key = "Gg9ZCDC7owu9r77LYheQ8O_CfimxXnUX3z01IG2K"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
