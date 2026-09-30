# hardware/firmware

Código del ESP32 (C++ con PlatformIO o Arduino IDE).

## Módulos sugeridos
```
firmware/
├── platformio.ini
└── src/
    ├── main.cpp
    ├── wifi_manager.*     conexión y reconexión
    ├── qr_reader.*        lectura por UART
    ├── api_client.*       HTTPClient + JSON
    ├── relay.*            activar/desactivar chapa
    └── config.h.example   SSID, URL del backend, API key (copiar a config.h)
```

## Importante
- `config.h` (con contraseña de Wi-Fi y API key) **no se sube**: solo `config.h.example`.
- Usar HTTPS si el despliegue lo permite.
- Timeouts cortos en las peticiones: el estudiante no debe esperar más de 2–3 s.
- Mientras el lector QR no responda, hacer *debounce* para no enviar el mismo escaneo varias veces.
