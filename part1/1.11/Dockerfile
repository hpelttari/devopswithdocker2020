FROM ubuntu:16.04
WORKDIR backend_app
RUN apt-get update && apt-get upgrade -y \
&& apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
COPY backend-example-docker .
RUN apt-get install -y nodejs
RUN npm install
EXPOSE 8000
CMD npm start
