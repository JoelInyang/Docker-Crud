FROM python:3.11

ENV PYTHONUNBUFFERED=1

WORKDIR /code

COPY requirements.txt . /code/

COPY requirements.txt  /code/

RUN pip install -r requirements.txt 

COPY . .

EXPOSE 8000

#CMD ["python3", "manage.py", "runserver"]

CMD ["gunicorn", "crud.wsgi:application", "--bind", "0.0.0.0:8000"]
#CMD ["gunicorn", "yourprojectname.wsgi:application", "--bind", "0.0.0.0:8000"]

