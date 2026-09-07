from fastapi import FastAPI
app = FastAPI()

@app.get("/")
def index():
    return {"msg":"Hello K8s Demo","status":"running"}

@app.get("/info")
def info():
    return {"project":"deploy github project to k8s"}
