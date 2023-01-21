FROM python:3.10-slim
WORKDIR /code_client
COPY ./docker_configurations/requirements_client.txt ./
RUN pip install --no-cache-dir -r requirements_client.txt
COPY ./code_client ./code_client
CMD ["uvicorn", "code_client.main:app", "--host", "0.0.0.0", "--port", "8001", "--reload"]