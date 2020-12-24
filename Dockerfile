FROM golang:1.15.6
WORKDIR /home

RUN apt-get update -y && apt-get install -y unzip
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

RUN  unzip awscliv2.zip
RUN ./aws/install
