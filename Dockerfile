FROM ubuntu:latest
RUN apt-get update -y && apt-get install -y nginx python python-pip python-dev build-essential
COPY . /checker
WORKDIR /checker
RUN pip install -r requirements.txt && uwsgi

ENTRYPOINT ["python"]
CMD ["server.py"]
