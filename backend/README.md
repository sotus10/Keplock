# backend

API REST de KepLock hecha con **FastAPI** y PostgreSQL.

**Responsables:** Mariana (lógica de negocio) y Juan Diego (arquitectura, seguridad, despliegue).

## Ejecutar
```bash
# con Docker (recomendado, desde la raíz)
docker compose up --build backend

# local
cd backend
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
uvicorn app.main:app --reload
```
Swagger: http://localhost:8000/docs

## Reglas de negocio que DEBE cumplir
1. Sin traslapes de fechas en un mismo casillero (`fecha_inicio_nueva <= fecha_fin_existente AND fecha_fin_nueva >= fecha_inicio_existente`).
2. Un estudiante = **una** reserva `pendiente` o `activa` (si no, `409`).
3. Estados: `pendiente → activa → finalizado`, o `pendiente → vencido`.
4. Un cron vence las reservas pendientes no reclamadas.
5. Cada apertura forzosa se guarda en `audit_log`.
6. Los endpoints de hardware usan `X-API-Key`, nunca el JWT de usuario.

## Estructura
```
backend/
├── app/        código de la aplicación
├── tests/      pruebas automáticas
├── Dockerfile
└── requirements.txt
```
