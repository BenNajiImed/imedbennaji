FROM python:3.8-slim-buster

ADD APIcall.py /

RUN pip install requirements.txt

CMD [ "python", "./APIcall.py" ]