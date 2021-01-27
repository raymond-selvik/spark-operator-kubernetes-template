FROM gcr.io/spark-operator/spark-py:v3.0.0

WORKDIR /app

COPY src/ .

ENTRYPOINT ["/opt/entrypoint.sh"]