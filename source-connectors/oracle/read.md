1. The name that is assigned to the connector when you register it with a Kafka Connect service.
2. The name of this Oracle connector class.
3. The address of the Oracle instance.
4. The port number of the Oracle instance.
5. The name of the Oracle user, as specified in Creating users for the connector.
6. The password for the Oracle user, as specified in Creating users for the connector.
7. The name of the database to capture changes from.
8. Topic prefix that identifies and provides a namespace for the Oracle database server from which the connector captures changes.
9. The maximum number of tasks to create for this connector.
10. The name of the Oracle pluggable database that the connector captures changes from. Used in container database (CDB) installations only.
11. The list of Kafka brokers that this connector uses to write and recover DDL statements to the database schema history topic.
12. The name of the database schema history topic where the connector writes and recovers DDL statements. This topic is for internal use only and should not be used by consumers.