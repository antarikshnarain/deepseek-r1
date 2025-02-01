#!/usr/bin/env bash

ssh-keygen -t rsa -b 4096 -C "my.email@gmail.com"
ollama serve &
sleep 10
echo "Starting Ollama"
ollama run deepseek-r1