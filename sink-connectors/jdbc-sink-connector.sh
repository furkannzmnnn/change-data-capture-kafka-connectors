curl -X POST http://localhost:8083/connectors -H 'Content-Type: application/json' -d \
'{
   "name": "jdbc-connector",
   "config": {
     "connector.class": "io.debezium.connector.jdbc.JdbcSinkConnector",
     "tasks.max": "1",
     "connection.url": "jdbc:<your-relational-db-example:postgresql>://localhost/db",
     "connection.username": "pguser",
     "connection.password": "pgpassword",
     "insert.mode": "upsert",
     "delete.enabled": "true",
     "primary.key.mode": "record_key",
     "schema.evolution": "basic",
     "database.time_zone": "UTC",
     "topics": "orders"
   }
 }'
