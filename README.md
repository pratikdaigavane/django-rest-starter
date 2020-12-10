# Django REST Starter

A starter template for building REST APIs in Django

## Features

 - User Management APIs
 - API Documentation using swagger
 - Integration with Django Rest Framework
 - JWT Authentication
 - Django Debug Toolbar
 - PostgreSQL and Redis integrated out of the box.
 - Containerized using Docker and managed using Docker Compose 


## Prerequisites

This project is built on top of docker containers. So ensure that you have
Docker and Docker Compose installed on your system For installation
instructions refer: https://docs.docker.com/install/

## Running unit test cases

* This project follows TDD(Test Drive Development) style.
* Flake8 is used as primary linter for the project

To run test cases:

```sh
docker-compose run app sh -c "python manage.py test && flake8"
```
## Starting the Server

Start PostgreSQL and Redis first:
```sh
docker-compose up -d db redis
```
Then start whole project:
```
docker-compose up
```

## Execute Commands

To execute any commands inside django docker container, follow this format:

```
docker-compose run app sh -c "command here"
```

### Examples

* Create Super User: 

    `docker-compose run app sh -c "python manage.py create superuser"`
* Add New App: 

    `docker-compose run app sh -c "python manage.py startapp polls"`

## API Documentation
API documentation is done using swagger visit /swagger for API documentation