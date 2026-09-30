# backend/app/api

Un archivo por grupo de rutas.

| Archivo | Rutas | HU |
|---|---|---|
| `auth.py` | `POST /api/auth/login` | HU-BE-03 |
| `lockers.py` | `GET /api/lockers`, `/{id}/availability` | HU-BE-05 |
| `reservations.py` | `POST /api/reservations`, `GET /me`, `DELETE /{id}` | HU-BE-08 |
| `admin.py` | `force-open`, `stats`, estado global | HU-BE-09 |
| `hardware.py` | `POST /api/hardware/scan` (**X-API-Key**) | HU-FS-09, HU-HW-06 |

## `POST /api/hardware/scan`
Entrada: `{"document_id": "1234567890", "locker_id": 1}`
Salida: `{"open": true, "reason": null}` o `{"open": false, "reason": "sin_reserva_vigente"}`.
Motivos: `estudiante_no_existe`, `sin_reserva_vigente`, `casillero_incorrecto`, `fuera_de_fecha`.
