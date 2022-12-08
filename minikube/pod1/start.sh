#!/usr/bin/env bash
service nginx start
uwsgi --socket /tmp/app.sock --http 0.0.0.0:8000 --master -p 4 -w app:app
