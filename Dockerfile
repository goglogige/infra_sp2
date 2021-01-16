FROM python:3.8.5

RUN mkdir /code
COPY . /code
WORKDIR /code
RUN pip install -r /code/requirements.txt
RUN python manage.py collectstatic --no-input
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000 && python manage.py migrate
