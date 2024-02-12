FROM python:3.12

WORKDIR /app
COPY requirements.txt /app

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY src /app

WORKDIR /app
ENTRYPOINT [ "uvicorn", "--port", "8000", "main:app" ]
