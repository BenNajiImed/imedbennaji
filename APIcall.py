import os
from requests import Request, Session
from requests.exceptions import ConnectionError, Timeout, TooManyRedirects
import json

url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?'
parameters = {
  'slug':'dogecoin',
}
headers = {
  'Accepts': 'application/json',
  'X-CMC_PRO_API_KEY': os.environ['API_KEY'],
}

session = Session()
session.headers.update(headers)

try:
  response = session.get(url, params=parameters)
  data = json.loads(response.text)
  print(data)
except (ConnectionError, Timeout, TooManyRedirects) as e:
  print(e)