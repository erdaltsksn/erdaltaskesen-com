FROM ubuntu:latest

# Update repository cache
RUN apt-get update

# Install Prerequisites
RUN apt-get install -y nodejs hugo

WORKDIR /app

EXPOSE 1313

CMD ["make", "run"]
