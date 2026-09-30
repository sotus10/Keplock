# backend/tests

Pruebas con `pytest`.

## Casos mínimos
- Login correcto / incorrecto.
- Estudiante intentando entrar a ruta de admin → `403`.
- Reserva que traslapa parcialmente → rechazada.
- Segunda reserva con una pendiente/activa → `409`.
- `/hardware/scan` sin API Key → `401`; con documento sin reserva → `open:false`.
- Cron de vencimiento.

Ejecutar: `pytest -q`
