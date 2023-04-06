FROM alpine:latest

WORKDIR .

RUN apk update && apk add python3 py3-pip

COPY . .

RUN pip3 install flask

EXPOSE 8080

CMD ["python3","app.py"]
