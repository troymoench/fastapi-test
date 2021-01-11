#! /usr/bin/env sh
set -e
exec gunicorn -c gunicorn_conf.py app.main:app
