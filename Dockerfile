FROM alpine:latest

RUN apk add --no-cache python3-dev && pip3 install -U pip

WORKDIR /flaskFreeCodeCamp

COPY . /flaskFreeCodeCamp

RUN pip3 --no-cache-dir install -r requirements.txt

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]
