FROM ubuntu:24.04

RUN apt update && apt install -y curl
RUN curl -fsSL https://ollama.com/install.sh | sh

COPY scripts /scripts
RUN chmod +x scripts/*
RUN /scripts/setup_ollama.sh

# ENTRYPOINT [ "/scripts/start_ollama.sh" ]
