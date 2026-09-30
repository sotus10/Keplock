# database/schema

Scripts DDL. Docker los ejecuta **en orden alfabético** al crear la base por primera vez.

```
001_tables.sql        student, admin, locker (+3 casilleros)
002_reservation.sql   reservation con CHECK de estado y FKs
003_audit_log.sql     audit_log
004_indexes.sql       índices de rendimiento
005_overlap_trigger.sql   función PL/pgSQL + trigger anti-traslape
```
Para reiniciar desde cero: `docker compose down -v && docker compose up`.
