#module "vpc" {
#  source = "git::https://github.com/ashwinreddy9966/tf-module-vpc.git?ref=main"
#}

module "mongodb" {
  source           = "./vendor/modules/mongodb" # we made this as the source as Terrafile places the remote source module and place here
  ENV              = var.ENV
}

module "redis" {
  source           = "./vendor/modules/redis" # we made this as the source as Terrafile places the remote source module and place here
  ENV              = var.ENV
}