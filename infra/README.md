# infra

Despliegue y operación.

**Responsable:** Juan Diego · **HU:** HU-FS-02, HU-FS-05, HU-FS-10

| Carpeta | Contenido |
|---|---|
| `docker/` | Dockerfiles y configuraciones adicionales (nginx, etc.) |
| `scripts/` | Scripts de operación (backup, despliegue, reinicio) |

## Despliegue
Backend y BD en **Render / Railway / Fly.io**, conectado a la rama `main`. Variables de entorno de producción se configuran en la plataforma, **no** en el repo. La URL pública debe existir pronto: Martin la necesita para probar el ESP32.
