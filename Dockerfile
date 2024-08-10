FROM python:alpine
RUN pip install prometheus_client requests

WORKDIR /app

RUN mkdir .data

COPY . .

EXPOSE 8000

CMD ["python", "service.py"]