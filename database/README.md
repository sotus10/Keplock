# database

Persistencia en **PostgreSQL**.

**Responsable:** Sergio · **HU:** HU-DB-01 … HU-DB-10

## Modelo

| Tabla | Descripción |
|---|---|
| `student` | `id`, `document_id` (único, = QR del carnet), `nombre`, `correo` (único), `password_hash` |
| `admin` | Credenciales de administradores/docentes |
| `locker` | Exactamente **3** registros iniciales |
| `reservation` | `student_id`, `locker_id`, `fecha_inicio`, `fecha_fin`, `estado`, `created_at` |
| `audit_log` | `admin_id`, `locker_id`, `motivo`, marca de tiempo |

`reservation.estado` ∈ `pendiente | activa | finalizado | vencido` (CHECK).

## Reglas
- minúsculas y `snake_case`.
- Integridad referencial con llaves foráneas.
- Índices: `(locker_id, fecha_inicio, fecha_fin)` y `(student_id, estado)`.
- Trigger `BEFORE INSERT` en `reservation` que rechaza traslapes (segunda capa de seguridad, HU-DB-09).

## Estructura
```
database/
├── schema/       DDL inicial (se ejecuta al crear el contenedor)
├── migrations/   cambios posteriores, numerados
├── seeds/        datos de prueba
└── backups/      respaldos (no se suben al repo)
```
