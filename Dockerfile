FROM python:3.12-slim

WORKDIR /app

COPY . .

EXPOSE 80

RUN  apt-get update &&  apt-get upgrade && pip install -r requirements.txt

CMD ["python","app.py"]