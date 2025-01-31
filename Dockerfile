FROM ubuntu:24.04

RUN apt update && apt install -y curl
RUN curl -fsSL https://ollama.com/install.sh | sh

COPY scripts /tmp/scripts
RUN chmod +x /tmp/scripts/*
RUN /tmp/scripts/setup_ollama.sh
