# Guía de contribución

## Ramas
- `main`: estable y desplegada. **Nadie hace push directo.**
- `develop`: integración del sprint.
- `feat/<HU>-<descripcion-corta>` → ej. `feat/HU-BE-06-traslapes`
- `fix/<descripcion>` para correcciones.

## Commits (Conventional Commits)
`feat: ...`, `fix: ...`, `docs: ...`, `refactor: ...`, `test: ...`, `chore: ...`
Incluye el código de la historia: `feat(HU-BE-03): endpoint de login con JWT`.

## Flujo
1. Toma una HU del tablero de Jira y muévela a *In Progress*.
2. Crea tu rama desde `develop`.
3. Abre un Pull Request hacia `develop` y pide revisión (estado *Code Review*).
4. Otro integrante aprueba → merge → *Done*.
5. `develop` → `main` al cerrar cada fase.

## Reglas
- Nunca subas `.env`, claves ni contraseñas.
- Tablas y columnas en `snake_case` y minúsculas.
- Fechas en ISO 8601.
- Si cambias un endpoint, actualiza `docs/api/` el mismo día.
