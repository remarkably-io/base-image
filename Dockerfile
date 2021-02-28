# Base Docker image for the Remarkably Django API
FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED 1
RUN apt-get update
RUN apt-get -y --no-install-recommends install curl gnupg libpq-dev python-dev libcairo2-dev build-essential git nginx
RUN pip3 install pipenv pipenv_to_requirements
