FROM python:3.11.5-slim-bullseye

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /app

COPY ./requirements.txt /app/
RUN pip install -r requirements.txt 

COPY . /app/

ENTRYPOINT [ "sh", "-c", "./scripts/start.sh" ]
