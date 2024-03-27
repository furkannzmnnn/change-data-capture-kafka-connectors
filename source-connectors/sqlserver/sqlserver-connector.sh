curl -X POST http://localhost:8083/connectors -H 'Content-Type: application/json' -d \
'{
   "name": "inventory-connector",
   "config": {
     "connector.class": "io.debezium.connector.sqlserver.SqlServerConnector",
     "database.hostname": "192.168.99.100",
     "database.port": "1433",
     "database.user": "sa",
     "database.password": "Password!",
     "database.names": "testDB1,testDB2",
     "topic.prefix": "fullfillment",
     "table.include.list": "dbo.customers",
     "schema.history.internal.kafka.bootstrap.servers": "kafka:9092",
     "schema.history.internal.kafka.topic": "schemahistory.fullfillment",
     "database.ssl.truststore": "path/to/trust-store",
     "database.ssl.truststore.password": "password-for-trust-store"
   }
 }'
