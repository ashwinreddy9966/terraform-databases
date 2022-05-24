module "mongodb" {
  source           = "./vendor/modules/mongodb" # we made this as the source as Terrafile places the remote source module and place here
  ENV              = var.ENV
  WORKSTATION_IP   = var.WORKSTATION_IP
}

module "redis" {
  source           = "./vendor/modules/redis" # we made this as the source as Terrafile places the remote source module and place here
  ENV              = var.ENV
 // WORKSTATION_IP   = var.WORKSTATION_IP
}

module "mysql" {
  source           = "./vendor/modules/mysql" # we made this as the source as Terrafile places the remote source module and place here
  ENV              = var.ENV
  WORKSTATION_IP   = var.WORKSTATION_IP
}

module "rabbitmq" {
  source           = "./vendor/modules/rabbitmq" # we made this as the source as Terrafile places the remote source module and place here
  ENV              = var.ENV
 // WORKSTATION_IP   = var.WORKSTATION_IP
}

output "rabbitmq" {
  value = module.rabbitmq.rabbitmq
}