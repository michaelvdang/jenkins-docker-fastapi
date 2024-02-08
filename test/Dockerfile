FROM nginx:alpine

WORKDIR /

RUN sudo apt update && sudo apt install --yes curl

COPY test.sh /test.sh

CMD curl test.sh && cat output.txt