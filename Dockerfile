FROM python:3

ADD server.py /
ADD requirements.txt /

RUN pip install flask flask-jsonpify flask-sqlalchemy flask-restful
RUN pip freeze

CMD [ "python", "./server.py" ]
