module "mongodb" {
  source                    = "./vendor/modules/mongodb" # we made this as the source as Terrafile places the remote source module and place here
  ENV                       = var.ENV
  WORKSTATION_IP            = var.WORKSTATION_IP
  DOCUMENTDB_PORT           = var.DOCUMENTDB_PORT
  DOCUMENTDB_INSTANCE_CLASS = var.DOCUMENTDB_INSTANCE_CLASS
  DOCUMENTDB_INSTANCE_COUNT = var.DOCUMENTDB_INSTANCE_COUNT
//  MONGODB_ENDPOINT          = var.MONGODB_ENDPOINT
}

module "redis" {
  source                     = "./vendor/modules/redis" # we made this as the source as Terrafile places the remote source module and place here
  ENV                        = var.ENV
  WORKSTATION_IP             = var.WORKSTATION_IP
  ELASTICACHE_PORT           = var.ELASTICACHE_PORT
  ELASTICACHE_ENGINE_VERSION = var.ELASTICACHE_ENGINE_VERSION
  ELASTICACHE_NODE_TYPE      = var.ELASTICACHE_NODE_TYPE
  ELASTICACHE_NODE_COUNT     = var.ELASTICACHE_NODE_COUNT
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
  source                      = "./vendor/modules/rabbitmq" # we made this as the source as Terrafile places the remote source module and place here
  ENV                         = var.ENV
  WORKSTATION_IP              = var.WORKSTATION_IP
  RABBITMQ_PORT               = var.RABBITMQ_PORT
//  RABBITMQ_ENGINE_VERSION     = var.RABBITMQ_ENGINE_VERSION
  RABBITMQ_INSTANCE_TYPE      = var.RABBITMQ_INSTANCE_TYPE
  APP_VERSION                 = var.APP_VERSION
  COMPONENT                   = var.COMPONENT
}


output "MONGODB_ENDPOINT" {
  value = module.mongodb.MONGODB_ENDPOINT
}