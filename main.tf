module "mongodb" {
  source           = "./vendor/modules/mongodb" # we made this as the source as Terrafile places the remote source module and place here
  ENV              = var.ENV
  WORKSTATION_IP   = var.WORKSTATION_IP
  DOCUMENTDB_PORT           = var.DOCUMENTDB_PORT
  DOCUMENTDB_INSTANCE_CLASS = var.DOCUMENTDB_INSTANCE_CLASS
  DOCUMENTDB_INSTANCE_CLASS = var.DOCUMENTDB_INSTANCE_CLASS
}

module "redis" {
  source           = "./vendor/modules/redis" # we made this as the source as Terrafile places the remote source module and place here
  ENV              = var.ENV
 // WORKSTATION_IP   = var.WORKSTATION_IP
}

module "mysql" {
  source             = "./vendor/modules/mysql" # we made this as the source as Terrafile places the remote source module and place here
  ENV                = var.ENV
  WORKSTATION_IP     = var.WORKSTATION_IP
  RDS_MYSQL_PORT     = var.RDS_MYSQL_PORT
  RDS_MYSQL_STORAGE  = var.RDS_MYSQL_STORAGE
  RDS_ENGINE_VERSION = var.RDS_ENGINE_VERSION
  RDS_INSTANCE_TYPE  = var.RDS_INSTANCE_TYPE
}

module "rabbitmq" {
  source           = "./vendor/modules/rabbitmq" # we made this as the source as Terrafile places the remote source module and place here
  ENV              = var.ENV
  WORKSTATION_IP   = var.WORKSTATION_IP
}

