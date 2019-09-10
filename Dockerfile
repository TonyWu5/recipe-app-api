FROM python:3.7-alpine
MAINTAINER TONY WU

ENV PYTHONUNBUFFERED 1
# prohibits python to buffer output
# prints output directly

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D tony
# -D use for running applications only
USER tony
# swithc out from root user, security reasons
