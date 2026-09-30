# hardware

Parte física del sistema: lee el QR del carnet, consulta al backend y abre la chapa.

**Responsable:** Martin · **HU:** HU-HW-01 … HU-HW-10

## Componentes
| Componente | Función |
|---|---|
| ESP32 | Microcontrolador, Wi-Fi, peticiones HTTP |
| Lector QR (módulo UART, p. ej. GM65/GM67) | Lee el QR del carnet y entrega el **número de identidad** por serial |
| Módulo relé | Conmuta la chapa eléctrica |
| Chapa eléctrica (12 V) | Cierre del casillero |
| Fuente dedicada | Evita caídas de voltaje (*brownouts*) al activar el relé |
| Botón de emergencia | Apertura local si se cae la red |
| Carcasa 3D | Protege la electrónica |

## Flujo del firmware
1. Conectar a Wi-Fi (con reconexión automática).
2. Esperar lectura del lector QR → obtener `document_id`.
3. `POST /api/hardware/scan` con `{document_id, locker_id}` y cabecera `X-API-Key`.
4. Si responde `open:true` → activar relé ~3 s. Si no → señal de error (LED/buzzer).

## Estructura
```
hardware/
├── firmware/       código del ESP32 (PlatformIO / Arduino)
├── wiring/         esquemas de conexión y lista de materiales
└── enclosure-3d/   modelos de la carcasa
```
