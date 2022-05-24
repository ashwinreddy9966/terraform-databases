ENV="dev"
WORKSTATION_IP="172.31.94.85/32"

# RDS
RDS_MYSQL_PORT  = 3306
RDS_MYSQL_STORAGE = 10
RDS_ENGINE_VERSION = "5.7"
RDS_INSTANCE_TYPE = "db.t3.micro"

#Mongo
DOCUMENTDB_PORT = 27017
DOCUMENTDB_INSTANCE_CLASS = "db.t3.medium"
DOCUMENTDB_INSTANCE_COUNT = 1

# Redis
ELASTICACHE_PORT           = 6379
ELASTICACHE_ENGINE_VERSION = "6.x"
ELASTICACHE_NODE_TYPE      = "cache.t3.small"
ELASTICACHE_NODE_COUNT     = 1


# RabbitMQ
RABBITMQ_PORT               = var.RABBITMQ_PORT
RABBITMQ_ENGINE_VERSION     = var.RABBITMQ_ENGINE_VERSION
RABBITMQ_INSTANCE_TYPE      = var.RABBITMQ_INSTANCE_TYPE