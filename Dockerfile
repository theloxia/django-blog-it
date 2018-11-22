FROM python:3.6.6
ENV PYTHONUNBUFFERED 1
RUN pip install --upgrade pipenv
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pipenv install django-blog-it
RUN pipenv install -r requirements.txt
ADD . /code/
