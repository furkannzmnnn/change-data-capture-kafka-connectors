1. The name of our connector when we register it with a Kafka Connect service.

   ```plaintext
   Connector Name: <YourConnectorName>
    ```

2. MongoDB Connector Class Name: <YourMongoDBConnectorClass>

   ```plaintext
   Connector Class Name: com.mongodb.kafka.connect.MongoSourceConnector
   ```

3. The logical name of the MongoDB replica set, which forms a namespace for generated events and is used in all the names of the Kafka topics to which the connector writes, the Kafka Connect schema names, and the namespaces of the corresponding Avro schema when the Avro converter is used.

   ```plaintext
   MongoDB Replica Set Connection String: <YourMongoDBConnectionString>
   ```

4. The name of the database to monitor for changes.

   ```plaintext
    Database Name: <YourDatabaseName>
    ```
   