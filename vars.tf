variable "ENV" {}
variable "WORKSTATION_IP" {}

#RDS
variable "RDS_MYSQL_PORT" {}
variable "RDS_MYSQL_STORAGE" {}
variable "RDS_ENGINE_VERSION" {}
variable "RDS_INSTANCE_TYPE" {}

#Mongo
variable "DOCUMENTDB_PORT" {}
variable "DOCUMENTDB_INSTANCE_CLASS" {}
variable "DOCUMENTDB_INSTANCE_COUNT" {}

#Redis
variable "ELASTICACHE_PORT" {}
variable "ELASTICACHE_ENGINE_VERSION" {}
variable "ELASTICACHE_NODE_TYPE" {}
variable "ELASTICACHE_NODE_COUNT" {}


#RabbitMQ
variable "RABBITMQ_PORT" {}
variable "RABBITMQ_ENGINE_VERSION" {}
variable "RABBITMQ_INSTANCE_TYPE" {}