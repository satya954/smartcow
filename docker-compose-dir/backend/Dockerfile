FROM python:3.9-slim
WORKDIR /app
COPY . .
RUN apt-get clean && apt-get -y update
RUN apt-get -y install python3-dev build-essential net-tools
RUN pip install -r requirements.txt
CMD ["uwsgi", "--socket", "/tmp/app.sock", "--http", "0.0.0.0:8000", "--master", "-p", "4", "-w", "app:app"]
