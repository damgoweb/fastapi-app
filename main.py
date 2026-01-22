from fastapi import FastAPI

app = FastAPI(root_path="/api")

@app.get("/")
def read_root():
    return {"status": "ok", "message": "FastAPI is running"}
