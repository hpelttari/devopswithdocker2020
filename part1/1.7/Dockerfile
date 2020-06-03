FROM ubuntu:16.04

RUN apt-get update && apt-get -y install curl

WORKDIR /mydir

COPY script.sh .

RUN chmod +x script.sh

CMD ["./script.sh"]
