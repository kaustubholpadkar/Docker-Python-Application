FROM python:3

WORKDIR /usr/src/app

COPY . .

CMD [ "python", "./app.py" ]
