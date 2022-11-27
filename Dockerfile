FROM python:3.8-slim-buster

ADD APIcall.py /
COPY requirements.txt .
RUN pip install -r requirements.txt

CMD [ "python", "./APIcall.py" ]