FROM python:3.9.6-slim-buster

WORKDIR /app/src

RUN apt-get update && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip install poetry==1.1.8

RUN poetry config virtualenvs.create false

COPY pyproject.toml poetry.lock /app/src/

RUN poetry install

COPY . /app/src/

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
