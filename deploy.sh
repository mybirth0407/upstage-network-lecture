#!/bin/bash

cd /home/ubuntu/upstage-network-lecture

git pull origin main

pkill -f "uvicorn main:app"

sleep 5

nohup uv run uvicorn main:app --host 0.0.0.0 --port 8000 \
  > /dev/null 2>&1 < /dev/null &

