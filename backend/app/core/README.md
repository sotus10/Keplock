# backend/app/core

Infraestructura transversal.

## Archivos previstos
- `config.py` — lee variables de `.env` (pydantic-settings).
- `database.py` — engine, sesión y pool de conexiones (HU-BE-02, HU-FS-06).
- `security.py` — hash bcrypt, creación y validación de JWT (HU-BE-03).
- `dependencies.py` — `get_current_user`, `require_admin` (middleware de roles, HU-BE-04) y `verify_api_key` para el ESP32 (HU-FS-09).
- `logging.py` — registro centralizado de errores (HU-FS-08).

**Regla:** jamás contraseñas en texto plano ni secretos en el código.
