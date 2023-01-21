# How to install 2 Docker Containers

## What are we trying to do?
We want to install 2 docker containers with one container being the sender (client), and one being the receiver (server). The sender is generating a message, whereas the receiver is displaying the message.

## Explanation of the files

### Capturing the Requirements of the Python Instances inside the Docker containers

We generate 2 files called 'requirements_x.txt' in the folder 'docker_configurations', where 'x' stands for either the client/sender or the server/receiver. We gehenrate 2 documents and not only one, as the client might need other python scripts than the server. We will later use those *.txt files to configure the docker containers.

### Please install Docker

We consider the installation done, if you have Docker running on your machine.

### Defining the Docker Compose file

We will use a docker compose file to configure both instances in the docker-compose.yml file. We will store that file in the folder 'docker-configurations"