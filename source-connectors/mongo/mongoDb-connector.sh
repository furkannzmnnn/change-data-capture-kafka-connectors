curl -X POST http://localhost:8083/connectors -H 'Content-Type: application/json' -d \
'{
   "name": "inventory-connector",
   "config": {
     "connector.class": "io.debezium.connector.mongodb.MongoDbConnector",
     "mongodb.connection.string": "mongodb://192.168.99.100:27017/?replicaSet=rs0",
     "topic.prefix": "fullfillment",
     "collection.include.list": "inventory[.]*"
   }
 }'
