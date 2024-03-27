curl -X POST http://localhost:8083/connectors -H 'Content-Type: application/json' -d \
'{
   "name": "inventory-connector",
   "config": {
     "connector.class" : "io.debezium.connector.oracle.OracleConnector",
     "tasks.max" : "1",
     "topic.prefix" : "server1",
     "database.user" : "c##dbzuser",
     "database.password" : "dbz",
     "database.url": "jdbc:oracle:thin:@(DESCRIPTION=(ADDRESS_LIST=(LOAD_BALANCE=OFF)(FAILOVER=ON)(ADDRESS=(PROTOCOL=TCP)(HOST=<oracle ip 1>)(PORT=1521))(ADDRESS=(PROTOCOL=TCP)(HOST=<oracle ip 2>)(PORT=1521)))(CONNECT_DATA=SERVICE_NAME=)(SERVER=DEDICATED)))",
     "database.dbname" : "ORCLCDB",
     "database.pdb.name" : "ORCLPDB1",
     "schema.history.internal.kafka.bootstrap.servers" : "kafka:9092",
     "schema.history.internal.kafka.topic": "schema-changes.inventory"
   }
 }'
