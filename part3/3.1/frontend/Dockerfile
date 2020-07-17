FROM ubuntu:16.04
ENV API_URL="/api"

WORKDIR frontend_app
COPY frontend-example-docker .

RUN apt-get update && apt-get upgrade -y \
    && apt-get install curl -y && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get install -y nodejs && \
    npm install  && \ 
    apt-get purge -y --auto-remove curl && \ 
    rm -rf /var/lib/apt/lists/* 

EXPOSE 5000

CMD npm start
