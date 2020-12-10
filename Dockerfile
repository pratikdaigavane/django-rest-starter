FROM python:3-alpine

#Run python in unbuffered mode to allow for log messages to be
#immediately dumped to the stream instead of being buffered.
ENV PYTHONUNBUFFERED 1

RUN apk update

# Install all dependencies
COPY ./app/requirements.txt /requirements.txt
RUN apk add --update --no-cache postgresql-client
RUN apk add --update --no-cache --virtual .tmp-build-deps \
      gcc libc-dev linux-headers postgresql-dev libffi-dev
RUN pip install -r requirements.txt
RUN apk del .tmp-build-deps

# Copying app to docker and making it as working directory
RUN mkdir /app
WORKDIR /app
COPY ./app /app

#Creating a user
RUN adduser -D user
USER user