FROM python:3.8-alpine3.18

WORKDIR /app

COPY requirements.txt /app/
RUN pip install  -r requirements.txt

COPY . /app/

EXPOSE 5000

CMD ["python", "run.py"]