FROM ubuntu:latest

# Skip the interactive mode
ARG DEBIAN_FRONTEND=noninteractive

# Update repository cache
RUN apt-get update

# Install Prerequisites
RUN apt-get install -y nodejs hugo

WORKDIR /app

EXPOSE 1313

CMD ["make", "run"]
