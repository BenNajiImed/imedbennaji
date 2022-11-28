FROM python:3.8-slim-buster

ADD APIcall.py /

RUN pip install requests
RUN pip install load_dotenv

CMD [ "python", "./APIcall.py" ]