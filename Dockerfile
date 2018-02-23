FROM python:3

WORKDIR /app
COPY /app /app
COPY ./requirements.txt /app

RUN pip install -r /app/requirements.txt

EXPOSE 5000

CMD ["uwsgi", "--ini", "/app/wsgi.ini"]