# docs/architecture

**Responsable:** Juan Diego · **HU:** HU-FS-01, HU-FS-10

## Qué va aquí
- Diagrama de arquitectura general (Frontend ↔ Backend ↔ BD ↔ ESP32).
- Diagrama del flujo de escaneo QR → validación → apertura.
- Registro de decisiones (ADR): por qué FastAPI, por qué QR y no RFID, etc.

## Decisión ya tomada: acceso por QR
El QR del carnet contiene el **número de identidad** del estudiante. El lector lo entrega tal cual al ESP32 y el backend lo busca en `student.document_id`. No hay tarjetas ni UID RFID.

## Flujo de escaneo
```
Lector QR → ESP32 → POST /api/hardware/scan {document_id, locker_id} + X-API-Key
  → Backend: ¿existe el estudiante? ¿tiene reserva pendiente/activa de ESTE casillero y vigente hoy?
  → Sí: responde {open:true}; ESP32 activa relé; estado → activa
  → No: responde {open:false, reason}; ESP32 muestra error (LED/buzzer)
```

## Archivos sugeridos
`architecture.drawio`, `scan-flow.drawio`, `adr-001-qr-en-lugar-de-rfid.md`
