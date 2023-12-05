# Flyway migrations

CLI example

```bash
docker run -v ./flyway/sql:/flyway/sql flyway/flyway -url=jdbc:postgresql://pi4b02:5432/vehicle_management -user=postgres -password=P@55w0rd -validateOnMigrate=true -baselineOnMigrate=true migrate
```