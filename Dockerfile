FROM python:3.8
LABEL author='Sergei Petukhov' version=1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY . /code

RUN pip install --upgrade pip
RUN pip install -r /code/requirements.txt

RUN python manage.py collectstatic --noinput