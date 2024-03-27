curl -X POST http://localhost:8083/connectors -H 'Content-Type: application/json' -d \
'{
   "name": "fulfillment-connector",
   "config": {
     "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
     "database.hostname": "192.168.99.100",
     "database.port": "5432",
     "database.user": "postgres",
     "database.password": "postgres",
     "database.dbname" : "postgres",
     "topic.prefix": "fulfillment",
     "table.include.list": "public.inventory"

   }
 }'
