FROM python:3.8-slim-buster

ADD APIcall.py /

RUN pip install requests dotenv

CMD [ "python", "./APIcall.py" ]