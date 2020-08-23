FROM ubuntu:16.04
WORKDIR /frontend_app
RUN apt-get update && apt-get upgrade -y \
&& apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
COPY frontend-example-docker /frontend_app
RUN apt-get install -y nodejs \
 && npm install -g serve webpack \
 && npm install -D \
 && useradd -m frontend \
 && chown frontend -R /frontend_app 

USER frontend

ENV API_URL="http://localhost:8000"
EXPOSE 5000
CMD npm start
