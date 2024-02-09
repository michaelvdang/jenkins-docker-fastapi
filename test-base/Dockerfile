FROM nginx:alpine

WORKDIR /

# RUN apt-get update && apt-get install --yes curl

COPY test.sh /test.sh

CMD sh test.sh && cat /data/output2.txt && cat /data/output.txt