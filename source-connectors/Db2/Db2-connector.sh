curl -X POST http://localhost:8083/connectors -H 'Content-Type: application/json' -d \
'{
   "name": "db2-connector",
   "config": {
     "connector.class": "io.debezium.connector.db2.Db2Connector",
     "database.hostname": "192.168.99.100",
     "database.port": "50000",
     "database.user": "db2inst1",
     "database.password": "Password!",
     "database.dbname": "mydatabase",
     "topic.prefix": "fullfillment",
     "table.include.list": "MYSCHEMA.CUSTOMERS",
     "schema.history.internal.kafka.bootstrap.servers": "kafka:9092",
     "schema.history.internal.kafka.topic": "schemahistory.fullfillment"
   }
 }'
