# docs/api

**Responsables:** Juan Diego y Mariana · **HU:** HU-FS-01, HU-FS-04

Contrato de la API. La fuente de verdad en ejecución es Swagger (`/docs`); aquí se guarda el `openapi.yaml` exportado y los ejemplos.

## Endpoints previstos

| Método | Ruta | Acceso | Descripción |
|---|---|---|---|
| POST | `/api/auth/login` | público | Login, devuelve JWT |
| GET | `/api/lockers` | autenticado | Lista los 3 casilleros |
| GET | `/api/lockers/{id}/availability` | autenticado | Rangos ocupados (ISO 8601) |
| POST | `/api/reservations` | estudiante | Crea reserva (`pendiente`) |
| GET | `/api/reservations/me` | estudiante | Mi reserva vigente |
| DELETE | `/api/reservations/{id}` | estudiante | Cancelación anticipada |
| GET | `/api/admin/lockers` | admin | Estado global |
| POST | `/api/admin/lockers/{id}/force-open` | admin | Apertura forzosa + auditoría |
| GET | `/api/admin/stats` | admin | Métricas para gráficas |
| POST | `/api/hardware/scan` | **X-API-Key** | Valida un documento escaneado |

## Códigos de error acordados
`401` sin sesión · `403` rol insuficiente · `409` conflicto (traslape o reserva activa) · `422` datos inválidos
