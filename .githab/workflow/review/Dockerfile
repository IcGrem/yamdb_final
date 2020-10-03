FROM python:3.8
LABEL author='Sergei Petukhov' version=1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

RUN pip install --upgrade pip
COPY requirements.txt /code
RUN pip install -r /code/requirements.txt

COPY . /code

RUN python manage.py collectstatic --noinput

CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000