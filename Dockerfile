FROM devilldon/py3-alpine:stable

ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1

WORKDIR /BOT

RUN chmod -R 777 /BOT

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .
