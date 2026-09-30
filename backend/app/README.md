# backend/app

Código de la aplicación, organizado por responsabilidad (arquitectura limpia modular).

| Carpeta | Responsabilidad |
|---|---|
| `core/` | Configuración, conexión a BD, seguridad (JWT, hashing, dependencias) |
| `api/` | Rutas HTTP (solo reciben, validan y delegan) |
| `models/` | Modelos ORM (tablas) |
| `schemas/` | Esquemas Pydantic (entrada/salida) |
| `services/` | Lógica de negocio |
| `jobs/` | Tareas programadas |

**Flujo de una petición:** `api` → `schemas` (valida) → `services` (regla de negocio) → `models` (BD).
Las rutas **no** contienen lógica de negocio.
