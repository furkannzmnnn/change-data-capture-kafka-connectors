curl -X POST http://localhost:8083/connectors -H 'Content-Type: application/json' -d \
'{
   "name": "inventory-connector",
   "config": {
     "connector.class": "io.debezium.connector.mysql.MySqlConnector",
     "database.hostname": "192.168.99.100",
     "database.port": "3306",
     "database.user": "root",
     "database.password": "rootpw",
     "database.server.id": "184054",
     "topic.prefix": "fullfillment",
     "database.include.list": "inventory",
     "schema.history.internal.kafka.bootstrap.servers": "kafka:9092",
     "schema.history.internal.kafka.topic": "schemahistory.fullfillment",
     "include.schema.changes": "true"
   }
 }'
