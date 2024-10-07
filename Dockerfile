# Use a minimal base image
FROM debian:latest

RUN apt-get update && apt-get install -y \
    lirc


WORKDIR /app

COPY cxa-remote .

COPY remotes ./remotes
COPY resources ./resources

EXPOSE 8080

CMD ["./cxa-remote"]
