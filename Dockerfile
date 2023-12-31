FROM python:3.8-bullseye

ENV PYTHONBUFFERED=1

WORKDIR /django

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 8000

CMD python3 manage.py runserver 0.0.0.0:8000
