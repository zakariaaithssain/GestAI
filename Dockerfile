FROM python:3.13-slim

WORKDIR /app

COPY . . 

RUN pip install uv 
RUN uv sync

RUN mkdir -p logs

ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["uv", "run", "sheet"]
 