# frontend

Aplicación web para **estudiantes** y **administradores**. Next.js (React) + Tailwind CSS, mobile-first.

**Responsable:** Isabella · **HU:** HU-FE-01 … HU-FE-10

## Arrancar el proyecto (primera vez)
Esta carpeta se inicializa con (HU-FE-01):
```bash
cd frontend
npx create-next-app@latest . --tailwind --eslint --app --src-dir
```
Luego: `npm run dev` → http://localhost:3000

Variable necesaria: `NEXT_PUBLIC_API_URL` (ver `.env.example` en la raíz).

## Vistas
| Vista | Rol | HU |
|---|---|---|
| Login | todos | HU-FE-02 |
| Calendario + reserva | estudiante | HU-FE-03/04 |
| Dashboard personal (estado + QR) | estudiante | HU-FE-05 |
| Panel global, gráficas, apertura forzosa | admin | HU-FE-06/07/08 |

## Reglas
- Diseño mobile-first, componentes reutilizables.
- Manejo global de `401` → redirigir al login (HU-FE-09).
- Seguir los wireframes de `docs/design/`.

## Estructura prevista
```
frontend/
├── public/        imágenes, logo
└── src/
    ├── app/        páginas y rutas
    ├── components/ componentes UI
    ├── hooks/      hooks reutilizables
    ├── lib/        cliente HTTP, auth, utilidades
    └── styles/     estilos globales y paleta
```
