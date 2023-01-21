FROM python:3.10-slim
WORKDIR /code_server
COPY ./docker_configurations/requirements_server.txt ./
RUN pip install --no-cache-dir -r requirements_server.txt
COPY ./code_server ./code_server
CMD ["uvicorn", "code_server.main:app", "--host", "0.0.0.0", "--port", "8002", "--reload"]