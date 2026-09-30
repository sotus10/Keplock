# backend/app/schemas

Esquemas Pydantic: lo que entra y sale de la API.

Ejemplos: `LoginRequest`, `TokenResponse`, `ReservationCreate` (con validación `fecha_fin >= fecha_inicio`), `ReservationOut`, `LockerAvailability`, `ScanRequest`, `ScanResponse`.

Fechas en **ISO 8601**. Nunca devolver `password_hash`.
