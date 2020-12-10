# django-rest-starter
A starter template for building REST APIs in Django

## Prerequisites
This project is built on top of docker containers. 
So ensure that you have Docker and Docker Compose installed on your system
For installation instructions refer: https://docs.docker.com/install/

## Running unit test cases
* This project follows TDD(Test Drive Development) style.
* Flake8 is used as primary linter for the project

To run test cases:
```sh
docker-compose run app sh -c "python manage.py test && flake8"
```

## Starting the Server
```sh
docker-compose up
```
Now the backend will be hosted at 127.0.0.1:8000

## API Documentation
API documentation is done using swagger
visit /swagger for API documentation