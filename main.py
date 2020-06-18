from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/ping")
async def ping():
    return "pong"


@app.get("/items/{item_id}")
async def read_item(item_id: int):
    """ docstring description """
    return {"item_id": item_id}
