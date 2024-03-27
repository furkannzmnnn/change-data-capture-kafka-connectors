1. The name of our connector when we register it with a Kafka Connect service.
2. The name of this SQL Server connector class.
3. The address of the SQL Server instance.
4. The port number of the SQL Server instance.
5. The name of the SQL Server user The password for the SQL Server user
6. The name of the database to capture changes from.
7. The topic prefix for the SQL Server instance/cluster, which forms a namespace and is used in all the names of the Kafka topics to which the connector writes, the Kafka Connect schema names, and the namespaces of the corresponding Avro schema when the Avro converter is used.
8. A list of all tables whose changes Debezium should capture.
9. The list of Kafka brokers that this connector will use to write and recover DDL statements to the database schema history topic.
10. The name of the database schema history topic where the connector will write and recover DDL statements. This topic is for internal use only and should not be used by consumers.
11. The path to the SSL truststore that stores the server’s signer certificates. This property is required unless database encryption is disabled (database.encrypt=false).
12. The SSL truststore password. This property is required unless database encryption is disabled (database.encrypt=false).