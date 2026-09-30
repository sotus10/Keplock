from fastapi import FastAPI

app = FastAPI(title="KepLock API", version="0.1.0")


@app.get("/health")
def health():
    return {"status": "ok"}

# TODO: registrar routers de app/api/ (auth, lockers, reservations, admin, hardware)
