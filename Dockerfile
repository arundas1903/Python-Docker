FROM python:3
MAINTAINER Arundas R

ENV PYTHONUNBUFFERRED 1
# Helps using print command

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
copy ./app /app

RUN adduser user
# -D is indicating that it is for running apps only
USER user
