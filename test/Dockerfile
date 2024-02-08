FROM nginx:alpine

WORKDIR /

RUN apt-get update && apt-get install --yes curl

COPY test.sh /test.sh

CMD curl test.sh && cat output.txt