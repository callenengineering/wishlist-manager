FROM tiangolo/uvicorn-gunicorn-fastapi:python3.10

ARG PIPENV_DEV="False"
ARG PIPENV_SYSTEM="True"

RUN pip3 install --upgrade pip
RUN pip install pipenv

COPY api/Pipfile .
COPY api/Pipfile.lock .
RUN pipenv install --deploy --ignore-pipfile --verbose

COPY api/src /app