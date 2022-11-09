# Pull base image
FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY Pipfile Pipfile.lock /code/

RUN pip install pipenv && pipenv install --system
RUN pipenv run pip install psycopg2-binary==2.8.4

COPY . /code/