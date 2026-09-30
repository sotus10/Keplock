# backend/app/models

Modelos ORM que reflejan **exactamente** las tablas de `database/schema/`.

`student` · `admin` · `locker` · `reservation` · `audit_log`

⚠️ `student` debe incluir **`document_id`** (número de identidad, único): es lo que contiene el QR del carnet y con lo que el hardware identifica al estudiante.

Si cambias un modelo, coordina con Sergio para actualizar el esquema SQL y el diccionario de datos.
