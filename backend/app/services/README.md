# backend/app/services

Lógica de negocio pura, sin HTTP.

| Servicio | Responsabilidad |
|---|---|
| `reservation_service.py` | Traslapes, regla estricta (una reserva por estudiante), transiciones de estado |
| `access_service.py` | Dado un `document_id` y un `locker_id`: ¿se puede abrir? (usado por `/hardware/scan`) |
| `audit_service.py` | Registro de aperturas forzosas |

Mantenerlos independientes de FastAPI para poder probarlos fácilmente.
