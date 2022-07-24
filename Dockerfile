FROM debian:stable

RUN apt-get update && \
    apt-get install -y --no-install-recommends wget curl ca-certificates systemctl && \ 
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN wget https://dl.typesense.org/releases/0.23.1/typesense-server-0.23.1-amd64.deb && \ 
    apt-get install ./typesense-server-0.23.1-amd64.deb -y && \
    rm ./typesense-server-0.23.1-amd64.deb

EXPOSE 8108/tcp
EXPOSE 8107/tcp

CMD ["typesense-server"]