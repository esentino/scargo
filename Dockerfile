FROM python:3.12

WORKDIR /app
COPY requirements.txt /app

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY src /app

WORKDIR /app
ENTRYPOINT [ "uvicorn", "--host", "0.0.0.0", "--port", "8000", "main:app" ]
