module "mongodb" {
  source           = "./vendor/modules/mongodb" # we made this as the source as Terrafile places the remote source module and place here
  ENV              = var.ENV
}

module "redis" {
  source           = "./vendor/modules/redis" # we made this as the source as Terrafile places the remote source module and place here
  ENV              = var.ENV
}

module "mysql" {
  source           = "./vendor/modules/mysql" # we made this as the source as Terrafile places the remote source module and place here
  ENV              = var.ENV
}

module "rabbitmq" {
  source           = "./vendor/modules/rabbitmq" # we made this as the source as Terrafile places the remote source module and place here
  ENV              = var.ENV
}