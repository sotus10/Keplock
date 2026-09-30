# 🔐 KepLock — Casilleros inteligentes para el colegio

Sistema de **hardware + software** que permite a los estudiantes del Colegio Adventista Icolven **reservar un casillero desde la web** y **abrirlo escaneando el QR de su carnet**, sin llaves.

> Proyecto productivo — Articulación SENA con la Educación Media (Centro de Servicios y Gestión Empresarial, Regional Antioquia).

## ¿Cómo funciona?

1. El estudiante inicia sesión en la web y ve el calendario de los **3 casilleros** (tramos de 3 días).
2. Reserva un rango de fechas → la reserva queda en estado `pendiente`.
3. **Regla estricta:** un estudiante solo puede tener **una** reserva `pendiente` o `activa` a la vez.
4. En el casillero, escanea el **QR de su carnet**. El QR contiene su **número de identidad**; el lector se lo entrega al ESP32.
5. El ESP32 envía ese número al backend (`POST /api/hardware/scan`). El backend busca al estudiante por `document_id`, verifica que tenga una reserva vigente para ese casillero y responde si se abre.
6. Si es válido, el ESP32 activa el relé (chapa eléctrica) por ~3 s y la reserva pasa a `activa`; al devolverlo, a `finalizado`.
7. Si nunca se reclama, un cron la marca `vencido` y libera el casillero.
8. El administrador ve el estado en tiempo real, estadísticas y puede hacer una **apertura forzosa** (queda en `audit_log`).

```
 Estudiante ──▶ Frontend (Next.js) ──▶ Backend (FastAPI) ──▶ PostgreSQL
                                            ▲
 Carnet (QR) ──▶ Lector QR ──▶ ESP32 ──Wi-Fi/HTTPS──┘
                                  └──▶ Relé ──▶ Chapa eléctrica
```

## Stack

| Capa | Tecnología |
|---|---|
| Base de datos | PostgreSQL |
| Backend | Python + FastAPI, JWT, bcrypt |
| Frontend | Next.js (React) + Tailwind CSS |
| Hardware | ESP32, lector QR (UART), módulo relé, chapa eléctrica 12 V |
| Infra | Docker / docker-compose, Render o Railway, GitHub Actions |
| Gestión | Jira (Scrum), Figma |

> El backlog original admite FastAPI **o** Express. Este repo parte de FastAPI; si el equipo decide otra cosa, solo cambia `backend/`.

## Estructura del repositorio

```
keplock/
├── backend/        API REST (autenticación, reservas, hardware, admin, cron)
├── frontend/       Aplicación web (estudiante y administrador)
├── database/       Esquema SQL, migraciones, seeders y backups
├── hardware/       Firmware del ESP32, cableado y carcasa 3D
├── infra/          Docker, despliegue y scripts de operación
├── docs/           Arquitectura, API, diseño, bitácoras y presentación
├── .github/        Workflows de CI y plantilla de Pull Request
├── docker-compose.yml
├── .env.example
└── CONTRIBUTING.md
```

Cada carpeta tiene su propio `README.md` con el detalle.

## Inicio rápido

```bash
git clone <url-del-repo> keplock && cd keplock
cp .env.example .env            # completa los valores
docker compose up --build       # levanta PostgreSQL + backend
```

- API: http://localhost:8000 — documentación Swagger: http://localhost:8000/docs
- Frontend: ver `frontend/README.md` (se ejecuta con `npm run dev`).

## Equipo

| Integrante | Rol | Carpeta principal |
|---|---|---|
| Isabella Quintero Torres | Product Owner · Front-end | `frontend/` |
| Sergio Lozano Barahona | Scrum Master · Base de datos | `database/` |
| Mariana Araque | UX/UI · Back-end | `backend/`, `docs/design/` |
| Juan Diego Soto Garzón | Arquitecto de software · Full-stack | `infra/`, `docs/architecture/`, integración |
| Martin Vallejo | Arquitecto de hardware | `hardware/` |

## Ruta crítica

`HU-DB-01 → HU-DB-02 → HU-BE-05 → HU-BE-06 → HU-BE-07 → HU-BE-08 → HU-HW-06`

Lo que esté en esta cadena tiene prioridad sobre cualquier otra tarea. Plan por fases en `docs/`.

## Entregables SENA

Las bitácoras (1 a 12) y la presentación final viven en `docs/bitacoras/` y `docs/presentation/`. Las bitácoras se comparten a la instructora **mínimo una semana antes** de la sustentación.
