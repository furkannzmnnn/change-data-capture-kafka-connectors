1. The name of the connector when registered with a Kafka Connect service.
2. The name of this PostgreSQL connector class.
3. The address of the PostgreSQL server.
4. The port number of the PostgreSQL server.
5. The name of the PostgreSQL user that has the required privileges.
6. The password for the PostgreSQL user that has the required privileges.
7. The name of the PostgreSQL database to connect to
8. The topic prefix for the PostgreSQL server/cluster, which forms a namespace and is used in all the names of the Kafka topics to which the connector writes, the Kafka Connect schema names, and the namespaces of the corresponding Avro schema when the Avro converter is used.
9. A list of all tables hosted by this server that this connector will monitor. This is optional, and there are other properties for listing the schemas and tables to include or exclude from monitoring.