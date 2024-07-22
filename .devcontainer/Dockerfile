FROM ubuntu:24.04

ARG DUCKDB_ARCH=amd64
ARG DUCKDB_VERSION=v1.0.0

RUN apt-get update && apt-get install -y build-essential
RUN apt-get install -y git curl unzip

RUN mkdir -p /usr/local/bin
RUN curl -Ls https://github.com/duckdb/duckdb/releases/download/${DUCKDB_VERSION}/duckdb_cli-linux-${DUCKDB_ARCH}.zip --output - | \
  funzip > /usr/local/bin/duckdb
RUN chmod +x /usr/local/bin/duckdb
