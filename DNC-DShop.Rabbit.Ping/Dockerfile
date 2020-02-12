FROM python:3-alpine

ENV RABBIT_HOST="rabbitmq"
ENV RABBIT_VHOST="/"
ENV RABBIT_USERNAME="guest"
ENV RABBIT_PASSWORD="guest"

RUN pip install pika

COPY check_rabbitmq_connection.py /check_rabbitmq_connection.py
RUN chmod +x /check_rabbitmq_connection.py

CMD ["sh", "-c", "python /check_rabbitmq_connection.py --host $RABBIT_HOST --username $RABBIT_USERNAME --password $RABBIT_PASSWORD --virtual_host $RABBIT_VHOST"]