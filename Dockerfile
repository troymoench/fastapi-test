FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY ./start.sh /start.sh
RUN chmod +x /start.sh

COPY ./gunicorn_conf.py /app/gunicorn_conf.py

COPY ./app /app/app

CMD ["/start.sh"]
