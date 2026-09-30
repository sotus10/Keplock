# backend/app/jobs

Tareas programadas (APScheduler o cron).

- `expire_reservations.py` — cada día marca como `vencido` las reservas `pendiente` cuya fecha de inicio ya pasó, liberando el casillero (HU-BE-10).

Deben ser **idempotentes**: ejecutarlas dos veces no debe romper nada.
