FROM ubuntu:16.04

ENV FRONT_URL="http://localhost" 
WORKDIR backend_app
COPY backend-example-docker .

RUN apt-get update && apt-get upgrade -y \
    && apt-get install curl -y && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get install -y nodejs && \
    npm install && \
    apt-get purge -y --auto-remove curl && \ 
    rm -rf /var/lib/apt/lists/* 

EXPOSE 8000
CMD npm start
