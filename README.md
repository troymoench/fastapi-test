# FastAPI Sample

Run the development server using:
```bash
uvicorn app.main:app --reload
```

Run the production server using:
```bash
gunicorn -k uvicorn.workers.UvicornWorker app.main:app
```
