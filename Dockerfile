from alpine:latest
RUN apk add --no-cache py3-pip \
    && pip3 install --upgrade pip

WORKDIR /app
COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt
RUN pip3 --no-cache-dir install -r smtplib

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["helloworld.py"]
