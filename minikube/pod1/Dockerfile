FROM python:3.9-slim
WORKDIR /app
RUN apt-get clean && apt-get -y update
RUN apt-get -y install python3-dev build-essential net-tools vim curl nginx
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY app.py app.py
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/sites-enabled/default.conf
COPY start.sh start.sh
EXPOSE 80
CMD ["./start.sh"]
